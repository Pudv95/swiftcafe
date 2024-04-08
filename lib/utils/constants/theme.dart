import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.white,
    primary: Colors.white,
    secondary: Colors.white,
  ),
  primarySwatch: Colors.blue,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.grey,
      fontSize: 16.0,
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 18.0,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
  ),
);
