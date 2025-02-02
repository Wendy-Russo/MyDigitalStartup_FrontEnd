// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/widgets/categoryCard.dart';
import 'package:mentis/widgets/gridList.dart';
import 'package:mentis/widgets/horizontalList.dart';
import 'package:mentis/widgets/profileCard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a ScrollController to manage the vertical scrolling
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
          children: const [
            HorizontalList(
              title: 'Top Categories',
              height: 170,
              child: CategoryCard(),
            ),
            HorizontalList(
              title: 'Top Webinars',
              height: 170,
              child: CategoryCard(),
            ),
            GridList(
              title: 'Top Profiles',
              crossAxisCount: 2,
              aspectRatio: 3 / 4,
              child: ProfileCard(),
            )
          ],
        ),
      ),
    );
  }
}
