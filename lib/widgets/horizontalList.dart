// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/widgets/categoryCard.dart';

class HorizontalList extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final double padding;
  final double spacing;
  final Widget child;
  final int itemCount;

  const HorizontalList(
      {super.key,
      this.title = "Top Categories",
      this.height = 170,
      this.width = 170,
      this.padding = 16,
      this.spacing = 16,
      this.itemCount = 4,
      this.child = const CategoryCard()});

  @override
  Widget build(BuildContext context) {
    // Create a ScrollController to manage the vertical scrolling

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Create a ScrollController for the first horizontal scroll
        Scrollbar(
          thumbVisibility: false,
          trackVisibility: false,
          thickness: 0,
          interactive: true, // Enable interactions with the scrollbar
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Row(
                  children: List.generate(
                    itemCount, // Replace 10 with the number of profiles
                    (index) => Padding(
                        padding: EdgeInsets.only(
                            right: index < (itemCount - 1)
                                ? spacing
                                : 0), // Add space between cards
                        child: SizedBox(
                          height: height,
                          width: width,
                          child: child,
                        )),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
