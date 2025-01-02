import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const Image(
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                    image: NetworkImage('https://picsum.photos/150'),
                  ),
                ),
                Container(
                  width: 300,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Dev Ops Engineer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'John is a Dev Ops Engineer ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '5 years of experience.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '5 Stars',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
