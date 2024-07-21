// ignore: file_names
import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import '../data/item_list_onboard.dart';

class PageViewOnboardWidget extends StatelessWidget {
  const PageViewOnboardWidget({
    super.key,
    this.onPageChanged,
  });

  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      flex: 6,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: PageView.builder(
          itemCount: itemList.length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) {
            final item = itemList[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 7,
                  child: Card(
                    elevation: 10,
                    shadowColor: primaryDarkColor.withOpacity(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.fitWidth,
                        width: size.width * 0.7,
                        height: size.height * 0.8,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  item.title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  item.description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: primaryDarkColor.withOpacity(
                          0.5,
                        ),
                      ),
                ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
