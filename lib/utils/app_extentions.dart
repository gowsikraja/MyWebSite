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
}