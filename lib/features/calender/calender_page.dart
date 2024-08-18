import 'package:flutter/material.dart';

class CalenderPageView extends StatelessWidget {
  const CalenderPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "Calender View Page",
          ),
        ),
      ),
    );
  }
}
