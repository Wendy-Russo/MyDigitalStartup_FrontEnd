import 'package:flutter/material.dart';
import 'package:mentis/pages/profile/profilePage.dart';

class LearnCard extends StatelessWidget {
  final bool showInteractions;

  const LearnCard({
    super.key,
    this.showInteractions = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://picsum.photos/150'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Wendy",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Flutter Course"),
              Text("26/02/25 14:56"),
            ],
          ),
          // only show if enabled
          if (showInteractions) Expanded(child: SizedBox()),
          if (showInteractions)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.check),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.close),
                  //refuse
                ),
              ],
            ),
        ],
      ),
    );
  }
}

/*ListTile(
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
    );*/