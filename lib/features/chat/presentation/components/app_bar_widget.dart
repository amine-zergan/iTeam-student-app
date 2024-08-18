import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/chat/presentation/components/search_delegate_user.dart';

class AppBarComponentWidget extends StatelessWidget {
  const AppBarComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      centerTitle: false,
      pinned: true,
      leading: const Padding(
        padding: EdgeInsets.all(7),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text(
            "AM",
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: SearchChatUser(),
            ).then((_) {
              // ignore: use_build_context_synchronously
              FocusScope.of(context).unfocus();
            });
          },
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.grey,
          ),
        )
      ],
      title: Text(
        "Chat",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
