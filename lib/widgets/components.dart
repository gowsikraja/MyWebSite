import 'package:flutter/material.dart';

class Components {
  static Widget trackingLine(String imagePath, {double leftPadding = 28}) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Image.asset(
        height: 200,
        imagePath,
        fit: BoxFit.contain,
      ),
    );
  }
}
