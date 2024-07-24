import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class ThemeApp {
  static ThemeData ligthTheme() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: baseColor,
      primaryColor: primaryColor,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
    );
  }
}
