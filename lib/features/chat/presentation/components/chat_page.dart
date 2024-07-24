import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:items_app/core/constant/palette_color.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
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
          ),
          SliverToBoxAdapter(
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
          ),
        ],
      ),
    );
  }
}

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
