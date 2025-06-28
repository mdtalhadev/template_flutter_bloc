import 'package:flutter/material.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha:0.4),
    labelStyle: const TextStyle(fontSize: 12, color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: Colors.white,
    elevation: 0,
  );

  static const ChipThemeData darkTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(fontSize: 12, color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.all(12.0),
    checkmarkColor: Colors.white,
    elevation: 0,
  );
}
