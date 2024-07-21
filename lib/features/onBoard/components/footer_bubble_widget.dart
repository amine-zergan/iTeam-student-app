import 'package:flutter/material.dart';
import 'bubble_widget.dart';

class FooterWidgetButtle extends StatelessWidget {
  const FooterWidgetButtle({
    super.key,
    required this.indexPage,
  });

  final int indexPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        key: const ValueKey(2),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            3,
            (index) => BubbleWidget(
              indexPage: indexPage,
              selectedIndex: index,
            ),
          ),
        ],
      ),
    );
  }
}
