import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/chat/presentation/components/body_chat_widget.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryDarkColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: const Icon(
          Icons.messenger_rounded,
          color: Colors.white,
        ),
      ),
      body: const BodyChatWidgetPage(),
    );
  }
}
