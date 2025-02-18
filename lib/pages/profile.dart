import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:mentis/pages/settings.dart';
import 'package:mentis/widgets/cards/statisticCard.dart';
import 'package:mentis/widgets/gridList.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_rounded),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                barrierColor:
                    Theme.of(context).primaryColor.withOpacity(0.5), // Optional
                isScrollControlled: true, // Allows full-height modal
                backgroundColor:
                    Colors.transparent, // Optional for rounded corners
                builder: (context) => _buildSettingsSheet(context),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ProfileForm(),
      ),
    );
  }

  Widget _buildSettingsSheet(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Start height of modal
      minChildSize: 0.6, // Minimum height
      maxChildSize: 0.9, // Maximum height
      builder: (context, scrollController) {
        return Settings();
      },
    );
  }
}

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _expertiseController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _descriptionController.dispose();
    _expertiseController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location services are disabled.')),
      );
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location permissions are denied.')),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location permissions are permanently denied.')),
      );
      return;
    }

    Position position = await Geolocator.getCurrentPosition();
    // You can use a package like `geocoding` to convert the coordinates to a country name
    // For simplicity, we'll just display the coordinates
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    _locationController.text = place.country ?? 'Unknown location';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your last name';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _expertiseController,
              decoration: InputDecoration(labelText: 'Expertise'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your expertise';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _locationController,
              decoration: InputDecoration(labelText: 'Location'),
              readOnly: true,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                await _getCurrentLocation();
              },
              child: Text('Use GPS to get current location'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process data
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Profile updated')),
                  );
                }
              },
              child: Text('Save'),
            ),
            GridList(
                padding: 0,
                crossAxisCount: 2,
                aspectRatio: 1.5,
                spacing: 8,
                itemCount: 4,
                title: 'Statistics',
                child: StatisticCard(
                    icon: Icons.monetization_on_rounded,
                    stat: "300€",
                    description: "Amount Earned")),
          ],
        ),
      ),
    );
  }
}
