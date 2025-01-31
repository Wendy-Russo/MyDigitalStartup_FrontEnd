import 'package:flutter/material.dart';
import 'package:mentis/pages/home/categoryCard.dart';
import 'package:mentis/pages/profile/profileCard.dart';

class ResultsGrid extends StatelessWidget {
  const ResultsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16),
          itemCount: 10, // Replace with the actual number of items
          itemBuilder: (context, index) {
            return ProfileCard(); // Replace with your actual CategoryCard widget
          },
        ),
      ),
    );
  }
}
