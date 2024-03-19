import 'package:flutter/material.dart';

class AppColors {
  final dark = _DarkMode();
  final lite = _ListeMode();
}

class _DarkMode {
  Color get background {
    return const Color(0xFF0D1117);
  }

  Color get onBackground {
    return const Color(0xFFFFFFFF);
  }

  Color get secoundary {
    return const Color(0xff4a4e52);
  }
}

class _ListeMode {
  Color get background {
    return const Color(0xFFF5F5F5);
  }

  Color get onBackground {
    return Colors.black;
  }

  Color get secoundary {
    return const Color(0xff4a4e52);
  }
}
