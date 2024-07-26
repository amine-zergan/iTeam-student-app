import 'package:flutter/material.dart';

class EmptyChatComponentWidget extends StatelessWidget {
  const EmptyChatComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverToBoxAdapter(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            Image.asset(
              "assets/images/empty_chat.png",
              width: size.width * 0.7,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "Démarrer une nouvelle conversation",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "appuyez sur le bouton ci-dessous pour commencer à discuter avec votre collègue",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
