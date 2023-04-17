import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AppScreen.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          labelLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.normal, color: Colors.white),
          labelSmall: TextStyle(
              fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),
          labelMedium: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
          bodyLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xff78CADE)),
          bodyMedium: TextStyle(
              fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
          bodySmall: TextStyle(
              fontSize: 11, fontWeight: FontWeight.normal, color: Colors.black),
          displayLarge: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      home: const AppScreen(),
    );
  }
}
