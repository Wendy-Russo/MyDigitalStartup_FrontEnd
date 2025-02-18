// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentis/pages/auth/login.dart';
import 'package:mentis/pages/auth/loginRegisterPage.dart';
import 'package:mentis/pages/auth/register.dart';
import 'package:mentis/widgets/navbar.dart';
import 'package:mentis/pages/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Geolocator.requestPermission();
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
              borderRadius: BorderRadius.circular(32),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: themeCol, width: 2),
            ),
          ),
          cardTheme: CardTheme(
              color: Colors.white,
              margin: EdgeInsets.all(0),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.antiAlias),
          appBarTheme: AppBarTheme(toolbarHeight: 64)),
      home: LoginRegisterPage(),
    );
  }
}
