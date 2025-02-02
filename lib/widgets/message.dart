// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String time;
  final String message;
  final bool isMe;
  final bool isRead;

  const Message({
    super.key,
    this.time = "17:12",
    this.message =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.",
    this.isMe = false,
    this.isRead = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: isMe ? 32 : 0, right: isMe ? 0 : 32),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: isMe ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(isMe ? 16 : 4),
                bottomRight: Radius.circular(isMe ? 4 : 16),
                topRight: Radius.circular(16))),
        child: Column(children: [
          Text(
            message,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isMe)
                Icon(
                  Icons.check_rounded,
                  color: isRead ? Colors.white70 : Colors.black45,
                ),
              Text(
                time,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              )
            ],
          ),
        ]));
  }
}
