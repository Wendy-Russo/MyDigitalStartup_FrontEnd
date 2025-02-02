import 'package:flutter/material.dart';
import 'package:mentis/pages/settings.dart';

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
                barrierColor: Theme.of(context).primaryColor.withOpacity(0.5), // Optional
                isScrollControlled: true, // Allows full-height modal
                backgroundColor: Colors.transparent, // Optional for rounded corners
                builder: (context) => _buildSettingsSheet(context),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }

  Widget _buildSettingsSheet(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Start height of modal
      minChildSize: 0.6, // Minimum height
      maxChildSize: 0.9, // Maximum height
      builder: (context, scrollController) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Settings(),
        );
      },
    );
  }
}
