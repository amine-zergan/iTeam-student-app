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
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text(
            "AM",
          ),
        ),
      ),
      title: Text(
        "Chat",
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
            ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(
          45,
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(),
          ),
          width: double.infinity,
          height: 55,
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10.0,
            bottom: 10,
          ),
          child: TextFormField(
            cursorColor: Colors.white,
            onTap: () {
              showSearch(
                context: context,
                delegate: SearchChatUser(),
              ).then((_) {
                FocusScope.of(context).unfocus();
              });
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
              hintText: "Recherche ...",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              fillColor: textFormField,
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
