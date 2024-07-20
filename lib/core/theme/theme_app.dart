import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData ligthTheme() {
    return ThemeData.light()
        .copyWith(scaffoldBackgroundColor: Colors.transparent);
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
    );
  }
}
