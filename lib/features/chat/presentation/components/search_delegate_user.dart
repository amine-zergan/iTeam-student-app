import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchChatUser extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        FocusScope.of(context).unfocus();
        Get.back();
      },
      icon: const Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const ListTile(
      title: Text("find your contact"),
    );
  }
}
