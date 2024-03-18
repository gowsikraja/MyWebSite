import 'package:flutter/material.dart';

class AppColors {
  static const secoundary = Color(0x2BCFE9FE);
  final dark = _DarkMode();
  final lite = _ListeMode();
}

class _DarkMode {
  Color get background {
    return const Color(0xFF0D1117);
  }

  Color get secoundary {
    return const Color(0x2BCFE9FE);
  }
}

class _ListeMode {
  Color get background {
    return const Color(0xFFF5F5F5);
  }

  Color get secoundary {
    return const Color(0x2BCFE9FE);
  }
}
