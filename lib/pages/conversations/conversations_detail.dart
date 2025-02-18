import 'package:flutter/material.dart';
import 'package:mentis/pages/profile/profilePage.dart';
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
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage("https://picsum.photos/50"),
              ),
              title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Active now"),
            ),
          )),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type a message",
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.send),
                color: Colors.white,
                onPressed: () {
                  // Add your send message logic here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
