// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  bool showLogin = true; // Toggle between login and register

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentis'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, "/login")
                }, 
                child: Text('Se Connecter'),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
              child: OutlinedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, "/register")
                }, 
                child: Text("S'inscrire"),
              ),
            ),
          ],
        )
      )
    );
  }
}
