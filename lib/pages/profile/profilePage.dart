import 'package:flutter/material.dart';
import 'package:mentis/widgets/cards/profileCard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: ProfileCard(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Bio',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'John Doe is a passionate software engineer with expertise in Flutter development. He loves creating intuitive and visually appealing applications.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  // Add your functionality here
                },
                child: const Text('Contact Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
