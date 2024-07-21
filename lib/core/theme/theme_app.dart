import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class ThemeApp {
  static ThemeData ligthTheme() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color.fromRGBO(242, 244, 248, 1),
      primaryColor: primaryColor,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
    );
  }
}
