// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion a Mentis"),
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
              TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: Text(
                  textAlign: TextAlign.right,
                  'Mot de passe oublié?',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/nav', (Route<dynamic> route) => false);
                },
                child: Text(
                  'Se Connecter',
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
