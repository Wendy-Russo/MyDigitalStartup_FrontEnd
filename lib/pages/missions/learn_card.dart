import 'package:flutter/material.dart';
import 'package:mentis/pages/messages/conversation.dart';
import 'package:mentis/pages/profile/profilePage.dart';

class LearnCard extends StatelessWidget {
  const LearnCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/150'),
                ),
                SizedBox(width: 16),
                Text("Wendy"),
              ],
            ),
          ),
          const Text("Interested in Flutter"),
          SizedBox(
            width: 200,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.check),
                  ),
                ),
                Flexible(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatDetailPage(
                            name: 'Name',
                            message: 'Poop',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.chat_bubble_rounded),
                    //refuse
                  ),
                ),
                const Flexible(
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.close),
                    //refuse
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
