import 'package:flutter/material.dart';
import 'package:mentis/pages/home/resultsGrid.dart';
import 'package:mentis/pages/profile/profilePage.dart';

class CategoryCard extends StatelessWidget {
  final String name;

  const CategoryCard({
    super.key,
    this.name = "Programmation",
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      elevation: 0,
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ResultsGrid()),
          );
        },
        child: AspectRatio(
          aspectRatio: 1.0, // Ensures the image is a square
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Image.network(
                  'https://picsum.photos/id/5/200',
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
                padding: EdgeInsets.only(left: 8),
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
