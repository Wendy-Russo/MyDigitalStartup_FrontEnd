// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/pages/profile/profileCard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a ScrollController to manage the scrolling
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Top Profiles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Scrollbar(
            controller: scrollController, // Attach the ScrollController
            thumbVisibility: true, // Always show the scrollbar thumb
            interactive: true, // Enable interactions with the scrollbar
            child: SingleChildScrollView(
              controller: scrollController, // Attach the same controller here
              scrollDirection: Axis.horizontal,
              child: Row(
                //add gap
                children: List.generate(
                  10, // Replace 10 with the number of profiles
                  (index) => ProfileCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
