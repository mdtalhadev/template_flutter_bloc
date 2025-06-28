
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  static const Color foregroundColorLightTheme = Colors.white;
  static const Color backgroundColorLightTheme = Colors.blue;
  static const Color shadowColorLightTheme = Colors.transparent;
  static const Color foregroundColorDarkTheme = Colors.white;
  static const Color backgroundColorDarkTheme = Colors.blue;
  static const Color shadowColorDarkTheme = Colors.transparent;
  static const double borderRadius = 20;

  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData get lightTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: foregroundColorLightTheme,
          backgroundColor: backgroundColorLightTheme,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(
            color: backgroundColorLightTheme,
            width: 1,
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      );

  static ElevatedButtonThemeData get darkTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: foregroundColorDarkTheme,
          backgroundColor: backgroundColorDarkTheme,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(
            color: backgroundColorDarkTheme,
            width: 1,
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      );
}
