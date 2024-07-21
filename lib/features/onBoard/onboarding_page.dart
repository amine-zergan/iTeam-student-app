import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:items_app/core/routes/route_name.dart';
import 'package:items_app/features/onBoard/components/body_onboard_widget.dart';
import 'package:items_app/features/onBoard/components/floating_action_widget.dart';

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
        onPressed: () {
          Get.offNamed(RouteNamePage.loginPath);
        },
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
