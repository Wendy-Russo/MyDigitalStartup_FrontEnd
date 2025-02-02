// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/widgets/categoryCard.dart';

class GridList extends StatelessWidget {
  final String title;
  final double aspectRatio;
  final double padding;
  final double spacing;
  final int itemCount;
  final int crossAxisCount;
  final Widget child;

  const GridList(
      {super.key,
      this.title = "Top Categories",
      this.aspectRatio = 1,
      this.padding = 16,
      this.spacing = 16,
      this.itemCount = 12,
      this.crossAxisCount = 3,
      this.child = const CategoryCard()});

  @override
  Widget build(BuildContext context) {
    // Create a ScrollController to manage the vertical scrolling

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Create a ScrollController for the first horizontal scroll
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true, // Make the GridView take only the necessary space
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
                childAspectRatio: aspectRatio),
            itemCount: itemCount, // Replace with the actual number of items
            itemBuilder: (context, index) {
              return child; // Replace with your actual ProfileCard widget
            },
          ),
        ),
      ],
    );
  }
}
