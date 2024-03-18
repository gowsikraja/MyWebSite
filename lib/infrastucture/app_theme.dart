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
  );

  static final dark = ThemeData(
    fontFamily: 'OpenSans',
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.black,
      background: AppColors().dark.background,
      secondary: AppColors().dark.secoundary,
    ),
  );
}
