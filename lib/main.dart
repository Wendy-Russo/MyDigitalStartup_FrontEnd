// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentis/pages/auth/login.dart';
import 'package:mentis/pages/auth/loginRegisterPage.dart';
import 'package:mentis/pages/auth/register.dart';
import 'package:mentis/pages/navbar.dart';
import 'package:mentis/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final themeCol = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/settings': (context) => Settings(),
        '/auth': (context) => LoginRegisterPage(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/nav': (context) => NavBar(),
      },
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: themeCol,
          dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          bodyMedium:
              GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 18),
          titleLarge: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 48),
            foregroundColor: themeCol,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 48),
            backgroundColor: themeCol.shade900,
            foregroundColor: themeCol.shade50,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 48),
            side: BorderSide(color: themeCol.shade900, width: 2),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1000),
            borderSide: BorderSide(color: themeCol, width: 2),
          ),
        ),
      ),
      home: LoginRegisterPage(),
    );
  }
}
