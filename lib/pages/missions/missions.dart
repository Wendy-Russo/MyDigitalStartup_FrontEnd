import 'package:flutter/material.dart';
import 'package:mentis/pages/missions/learn_card.dart';

class MissionsPage extends StatelessWidget {
  const MissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        controller: scrollController, // Attach the vertical ScrollController
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Demandes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Create a ScrollController for the first horizontal scroll
            Scrollbar(
              thumbVisibility: true, // Always show the scrollbar thumb
              interactive: true, // Enable interactions with the scrollbar
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //add gap
                  children: List.generate(
                    10, // Replace 10 with the number of profiles
                    (index) => LearnCard(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Prochains Cours',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Create a ScrollController for the first horizontal scroll
            Scrollbar(
              thumbVisibility: true, // Always show the scrollbar thumb
              interactive: true, // Enable interactions with the scrollbar
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //add gap
                  children: List.generate(
                    10, // Replace 10 with the number of profiles
                    (index) => LearnCard(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cours Terminés',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Create a ScrollController for the first horizontal scroll
            Scrollbar(
              thumbVisibility: true, // Always show the scrollbar thumb
              interactive: true, // Enable interactions with the scrollbar
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //add gap
                  children: List.generate(
                    10, // Replace 10 with the number of profiles
                    (index) => LearnCard(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
