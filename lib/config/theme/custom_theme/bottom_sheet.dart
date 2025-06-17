import 'package:flutter/material.dart';

class AppBottomSheet {
  AppBottomSheet._();

  static final BottomSheetThemeData lightTheme = BottomSheetThemeData(
    elevation: 0,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(
      minHeight: 100,
      maxHeight: 500,
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  static final BottomSheetThemeData darkTheme = BottomSheetThemeData(
    elevation: 0,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(
      minHeight: 100,
      maxHeight: 500,
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
