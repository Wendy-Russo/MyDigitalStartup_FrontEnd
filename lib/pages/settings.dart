// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/auth', (Route<dynamic> route) => false);
                },
              child: Text("Déconnexion"),
            ),
            Divider(
              height: 32,
              thickness: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fermer'),
            ),
          ],
        )
      ) 
    );
  }
}
