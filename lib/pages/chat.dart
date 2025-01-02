// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Chat'),
      ),
      body: Center(
        child: Text('Chat'),
      ),  
    );
  }
}