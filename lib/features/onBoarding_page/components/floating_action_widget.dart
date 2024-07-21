import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/onBoarding_page/data/item_list_onboard.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    super.key,
    required this.indexPage,
  });

  final int indexPage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeInOut,
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      child: indexPage + 1 != itemList.length
          ? const SizedBox(
              key: ValueKey("1"),
            )
          : MaterialButton(
              key: const ValueKey("2"),
              onPressed: () {},
              color: primaryDarkColor,
              minWidth: size.width * 0.2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Skip",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
    );
  }
}
