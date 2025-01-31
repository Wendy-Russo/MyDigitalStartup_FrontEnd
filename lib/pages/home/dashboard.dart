// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/pages/home/categoryCard.dart';
import 'package:mentis/pages/profile/profileCard.dart';

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
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
              child: Text(
                'Top Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Create a ScrollController for the first horizontal scroll
            Scrollbar(
              interactive: true, // Enable interactions with the scrollbar
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: List.generate(
                        10, // Replace 10 with the number of profiles
                        (index) => Padding(
                            padding: EdgeInsets.only(
                                right: index < 9
                                    ? 16.0
                                    : 0), // Add space between cards
                            child: SizedBox(
                              height: 170,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: CategoryCard(),
                              ),
                            )),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
              child: Text(
                'Top Webinars',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Create a ScrollController for the first horizontal scroll
            Scrollbar(
              interactive: true, // Enable interactions with the scrollbar
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: List.generate(
                        10, // Replace 10 with the number of profiles
                        (index) => Padding(
                            padding: EdgeInsets.only(
                                right: index < 9
                                    ? 16.0
                                    : 0), // Add space between cards
                            child: SizedBox(
                              height: 170,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: CategoryCard(),
                              ),
                            )),
                      ),
                    ),
                  )),
            ),

            // Create a ScrollController for the first horizontal scroll
            Scrollbar(
              interactive: true, // Enable interactions with the scrollbar
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: List.generate(
                        10, // Replace 10 with the number of profiles
                        (index) => Padding(
                          padding: EdgeInsets.only(
                              right: index < 9
                                  ? 16.0
                                  : 0), // Add space between cards
                        ),
                      ),
                    ),
                  )),
            ),

            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
              child: Text(
                'Top Profiles',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap:
                    true, // Make the GridView take only the necessary space
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemCount: 12, // Replace with the actual number of items
                itemBuilder: (context, index) {
                  return ProfileCard(); // Replace with your actual ProfileCard widget
                },
              ),
            ),
            // Create a GridView without a second scroll
          ],
        ),
      ),
    );
  }
}
