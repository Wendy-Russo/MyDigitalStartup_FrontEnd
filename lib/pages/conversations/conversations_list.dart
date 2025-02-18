// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentis/widgets/cards/chatCard.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Conversations'),
      ),
      body: SingleChildScrollView(
        controller: scrollController, // Attach the vertical ScrollController
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            100,
            (index) => ChatCard(),
          ),
        ),
      ),
    );
  }
}
