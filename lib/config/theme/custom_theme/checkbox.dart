
import 'package:flutter/material.dart';

class AppCheckboxTheme {
  AppCheckboxTheme._();

  static const activeColor = Colors.blue;

  static  CheckboxThemeData get lightTheme => CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }
        return Colors.black;
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return activeColor;
        }
        return Colors.transparent;
      },
    ),
    side: const BorderSide(
      color: activeColor,
      width: 1,
    ),
    splashRadius: 4,
    visualDensity: VisualDensity.standard,
    materialTapTargetSize: MaterialTapTargetSize.padded,

  );


  static final CheckboxThemeData darkTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }
        return Colors.black;
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.black;
        }
        return Colors.transparent;
      },
    ),
    side: const BorderSide(
      color: Colors.white,
      width: 1,
    ),
    splashRadius: 4,
    visualDensity: VisualDensity.standard,
    materialTapTargetSize: MaterialTapTargetSize.padded,
  );

}
