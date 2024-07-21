import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/auth/presentation/login_page/components/body_sign_in.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySignIn(),
    );
  }
}

class AccessAccountWidget extends StatelessWidget {
  const AccessAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Se connecter pour accéder à votre compte.",
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            letterSpacing: 0.8,
            color: primaryDarkColor.withOpacity(
              0.6,
            ),
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
