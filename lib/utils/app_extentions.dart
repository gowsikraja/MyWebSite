import 'package:flutter/material.dart';

///Context extentions for simply handling the context related operations

extension NavigatorPush on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
