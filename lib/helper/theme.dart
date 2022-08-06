import 'package:flutter/material.dart';

class DelosTheme {
  TextStyle titleText({fontSize = 16.0}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
    );
  }

  TextStyle bodyText({fontSize = 13.0}) {
    return TextStyle(
      color: Colors.black87,
      fontSize: fontSize,
    );
  }
}
