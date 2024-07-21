import 'package:flutter/material.dart';

class LogoIteamsWidget extends StatelessWidget {
  const LogoIteamsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Image.asset(
        "assets/images/login.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
