

import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();


  static TextTheme lightTextTheme = const TextTheme(
    titleSmall: TextStyle(
      fontSize: 16, // Typically used for large display text
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 18, // Typically used for large display text
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 20, // Typically used for large display text
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 24, // Typically used for large display text
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 28, // Typically used for large display text
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 13, // Typically used for large display text
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14, // Typically used for large display text
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  );
}
