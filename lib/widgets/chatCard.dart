// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/pages/messages/ChatDetailPage.dart';
import 'package:mentis/pages/profile/profilePage.dart';

class ChatCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;

  const ChatCard(
      {super.key,
      this.imageUrl = "https://picsum.photos/50",
      this.name = "Wendy",
      this.message = "Hey there"});

  @override
  Widget build(BuildContext context) {
    final String displayImageUrl =
        imageUrl.isNotEmpty ? imageUrl : "https://picsum.photos/50";
    final String displayName = name.isNotEmpty ? name : "Wendy";
    final String displayMessage = message.isNotEmpty ? message : "Hey there";

    return ListTile(
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ),
          );
        },
        child: CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(displayImageUrl),
        ),
      ),
      title: Text(displayName),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
      subtitle: Text(displayMessage),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ChatDetailPage(name: displayName, message: displayMessage),
          ),
        );
      },
    );
  }
}
