// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text('Dashboard'),
      ),  
    );
  }
}