import 'package:flutter/material.dart';
import 'package:mentis/widgets/message.dart';

class ChatDetailPage extends StatelessWidget {
  final String name;
  final String message;

  const ChatDetailPage({super.key, required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48,
        elevation: 10,
        title: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage("https://picsum.photos/50"),
          ),
          title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Active now"),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController, // Attach the vertical ScrollController
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              50,
              (index) => Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Message(
                    isMe: index % 2 == 0,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
