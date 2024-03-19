import 'package:flutter/material.dart';

///Context extentions for simply handling the context related operations

extension NavigatorPush on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension ColorSchemeExtension on ColorScheme {
  Color get secoundary => brightness == Brightness.light
      ? const Color(0x2BCFE9FE)
      : const Color(0x2BCFE9FE);

  Color get background => brightness == Brightness.light
      ? const Color(0xFF0D1117)
      : const Color(0xFF0D1117);

  Color get aboutMe => brightness == Brightness.light
      ? const Color(0xFF7EE787)
      : const Color(0xFF7EE787);

  Color get aboutMeBodyBackground => brightness == Brightness.light
      ? const Color(0xFF161B22)
      : const Color(0xFF161B22);

  Color get aboutMeBodyStroke => brightness == Brightness.light
      ? const Color(0xFF30363D)
      : const Color(0xFF30363D);

  Color get bodyTextColor => brightness == Brightness.light
      ? const Color(0xFF000000)
      : const Color(0xFFFFFFFF);
}