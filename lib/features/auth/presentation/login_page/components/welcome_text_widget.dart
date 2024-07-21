import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Bienvenue A\nIteam-Student",
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            letterSpacing: 0.8,
            color: primaryDarkColor,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
