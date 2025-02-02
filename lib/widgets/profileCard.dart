import 'package:flutter/material.dart';
import 'package:mentis/pages/profile/profilePage.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String location;
  final double rating;
  final int ratingNumber;
  final int price;
  final String description;

  const ProfileCard({
    super.key,
    this.name = "Emilie",
    this.location = "Nice & Visio",
    this.rating = 4.9,
    this.ratingNumber = 28,
    this.price = 30,
    this.description = "IA & Data Science",
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        },
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.0, // Ensures the image is a square
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.network(
                      'https://picsum.photos/id/64/200',
                      fit: BoxFit.cover, // Ensures the image covers the space
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(8.0)),
                      color: Colors.black26,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    height: 55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Title and Subtitle
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Icon(Icons.star_rounded, color: Colors.amber),
                    Text("$rating",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Text('$ratingNumber avis',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.normal)),
                    Expanded(child: SizedBox()),
                    Text('$price €/h',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ]),
                  Text(description,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
