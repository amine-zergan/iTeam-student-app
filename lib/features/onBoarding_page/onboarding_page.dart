import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/onBoarding_page/components/body_onboard_widget.dart';
import 'package:items_app/features/onBoarding_page/components/floating_action_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionWidget(
        indexPage: indexPage,
      ),
      body: BodyOnBoardingWidget(
        indexPage: indexPage,
        onPageChanged: (index) {
          setState(() {
            indexPage = index;
          });
        },
      ),
    );
  }
}
