// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription a Mentis"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 15),
              // Password input field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmer le mot de passe',
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/nav', (Route<dynamic> route) => false);
                },
                child: Text(
                  'Inscription',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              // Forgot password text
            ],
          ),
        ),
      ),
    );
  }
}
