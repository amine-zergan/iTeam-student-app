import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/core/routes/route_name.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(RouteNamePage.forgetPath);
          },
          borderRadius: BorderRadius.circular(
            5,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Oublié le mot de passe ?",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: primaryColor,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
