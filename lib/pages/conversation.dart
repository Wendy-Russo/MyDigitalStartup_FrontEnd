import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  final String name;
  final String message;

  const ChatDetailPage({super.key, required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(message),
      ),
    );
  }
}
