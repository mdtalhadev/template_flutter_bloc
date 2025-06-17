import 'package:flutter/material.dart';

import 'custom_theme/app_bar.dart';
import 'custom_theme/bottom_sheet.dart';
import 'custom_theme/checkbox.dart';
import 'custom_theme/chip.dart';
import 'custom_theme/elevated_button.dart';
import 'custom_theme/icon_button.dart';
import 'custom_theme/outlined_button.dart';
import 'custom_theme/text.dart';
import 'custom_theme/text_button.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    splashColor: Colors.transparent,
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0XFFFDE595),
    scaffoldBackgroundColor: const Color(0XFFFDFDFD),
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightTheme,
    appBarTheme: AppAppBarTheme.lightTheme,
    bottomSheetTheme: AppBottomSheet.lightTheme,
    checkboxTheme: AppCheckboxTheme.lightTheme,
    chipTheme: AppChipTheme.lightTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightTheme,
    // inputDecorationTheme: AppTextFormFieldTheme.lightTheme,
    textButtonTheme: AppTextButtonTheme.lightTheme,
    iconButtonTheme: AppIconButtonTheme.lightTheme,
  );

}
