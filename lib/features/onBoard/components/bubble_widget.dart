import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class BubbleWidget extends StatelessWidget {
  const BubbleWidget({
    super.key,
    required this.indexPage,
    required this.selectedIndex,
  });

  final int indexPage;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        color: indexPage != selectedIndex
            ? Colors.grey.shade300
            : primaryDarkColor,
        borderRadius: BorderRadius.circular(
          2,
        ),
      ),
      width: indexPage != selectedIndex ? 20 : 50,
      height: 5,
      margin: const EdgeInsets.only(
        right: 5,
      ),
    );
  }
}
