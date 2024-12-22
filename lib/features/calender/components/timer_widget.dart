import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "19:00",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2H30min",
          ),
        ],
      ),
    );
  }
}
