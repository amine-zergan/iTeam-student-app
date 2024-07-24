import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class NoteComponentView extends StatelessWidget {
  const NoteComponentView({
    super.key,
    required this.heigth,
    required this.icon,
    required this.title,
    required this.color,
    this.onPressed,
  });
  final double heigth;
  final IconData icon;
  final String title;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: heigth,
      color: Colors.white,
      onPressed: onPressed,
      elevation: 1,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: iconColorActive,
            size: 50,
          ),
          SizedBox(
            height: heigth * 0.2,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(),
          ),
        ],
      ),
    );
  }
}
