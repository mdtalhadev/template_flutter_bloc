

import 'package:flutter/material.dart';

class AppIconButtonTheme {
  AppIconButtonTheme._();

  static IconButtonThemeData get lightTheme => IconButtonThemeData(
          style: IconButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // shape: const CircleBorder(
        //   side: BorderSide(width: 1, color: AppColors.textGrey),
        // ),
      ));

  static IconButtonThemeData get darkTheme => IconButtonThemeData(
          style: IconButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: const CircleBorder(
          side: BorderSide(width: 1, color: Colors.grey),
        ),
      ));
}
