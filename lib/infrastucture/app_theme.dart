import 'package:flutter/material.dart';
import 'package:my_website/infrastucture/app_colors.dart';

class AppTheme {
  static final lite = ThemeData(
    fontFamily: 'OpenSans',
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.white,
      background: AppColors().lite.background,
      secondary: AppColors().lite.secoundary,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 22),
      bodyMedium: TextStyle(fontSize: 18),
      bodySmall: TextStyle(fontSize: 16),
    ).apply(displayColor: Colors.black),
  );

  static final dark = ThemeData(
    fontFamily: 'OpenSans',
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.black,
      background: AppColors().dark.background,
      secondary: AppColors().dark.secoundary,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 22),
      bodyMedium: TextStyle(fontSize: 18),
      bodySmall: TextStyle(fontSize: 16),
    ).apply(displayColor: Colors.white),
  );
}
