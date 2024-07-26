import 'package:flutter/material.dart';
import 'package:items_app/features/chat/presentation/components/app_bar_widget.dart';
import 'package:items_app/features/chat/presentation/empty_chat_widget.dart';

class BodyChatWidgetPage extends StatelessWidget {
  const BodyChatWidgetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      shrinkWrap: true,
      slivers: [
        AppBarComponentWidget(),
        EmptyChatComponentWidget(),
      ],
    );
  }
}
