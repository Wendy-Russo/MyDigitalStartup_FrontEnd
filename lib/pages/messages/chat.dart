// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/pages/messages/conversation.dart';
import 'package:mentis/pages/profile/profilePage.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Chat'),
      ),
      body: ListView(
        children: [
          _buildChatItem(
            context,
            'https://via.placeholder.com/150',
            'John Doe',
            'Hey, how are you?',
          ),
          _buildChatItem(
            context,
            'https://via.placeholder.com/150',
            'Jane Smith',
            'Are we still meeting tomorrow?',
          ),
          _buildChatItem(
            context,
            'https://via.placeholder.com/150',
            'Mike Johnson',
            'Check out this cool link!',
          ),
        ],
      ),
    );
  }

  Widget _buildChatItem(
      BuildContext context, String imageUrl, String name, String message) {
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
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
      title: Text(name),
      subtitle: Text(message),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(name: name, message: message),
          ),
        );
      },
    );
  }
}
