import 'package:flutter/material.dart';

class CustomColors {
//  Pink Color
  final Color lightPink = Color(0xFFFFEFEF);
  final Color pink = Color(0xFFFF9999);

//  Green Color
  final Color grey = Color(0xFFEBF6EB);
  final Color green = Color(0xFF99EE99);

  final Color lightGrey = Color(0xFFF0F0F0);

// White to grey Colors
  final Color white = Color(0xFFFFFFFF);
  final Color btngrey = Color(0xFFEFEFEF);

  final Color dividerColor = Color(0xFFE8E8E8);
  final Color dotcolorw = Color(0xFFD6D6D6);
  final Color bordergrey = Color(0xFFA8A8A8);
  final Color darkGrey = Color(0xFF757575);
  final Color black = Color(0xFF474747);
  final Color commentColor = Color(0xFFF2F2F2);

  LinearGradient gradientcolor(color1, color2) {
    return LinearGradient(
      colors: [
        color1,
        color2,
      ],
    );
  }
}
