import 'package:flutter/material.dart';
import 'package:items_app/features/onBoard/components/footer_bubble_widget.dart';
import 'package:items_app/features/onBoard/components/logo_item_widget.dart';
import 'package:items_app/features/onBoard/components/page_viewOnboard_widget.dart';


class BodyOnBoardingWidget extends StatelessWidget {
  const BodyOnBoardingWidget({
    super.key,
    this.onPageChanged,
    required this.indexPage,
  });

  final void Function(int index)? onPageChanged;
  final int indexPage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const LogoIteamsWidget(),
            PageViewOnboardWidget(
              onPageChanged: onPageChanged,
            ),
            FooterWidgetButtle(
              indexPage: indexPage,
            ),
          ],
        ),
      ),
    );
  }
}
