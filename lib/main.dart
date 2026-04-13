import 'package:flutter/material.dart';
import 'package:whale/screen/SplashScreen.dart';
import 'package:whale/screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Whaleasset(),
      // home: Splash(),
      home: HomeScreen(),
    );
  }
}