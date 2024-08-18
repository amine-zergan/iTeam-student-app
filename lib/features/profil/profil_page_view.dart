import 'package:floor/floor.dart';
import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class ProfilViewPage extends StatelessWidget {
  const ProfilViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.17,
            actions: [
              IconButton(
                onPressed: () {},
                splashColor: Colors.grey,
                icon: const Icon(
                  Icons.login_rounded,
                  color: Colors.white70,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
            centerTitle: false,
            flexibleSpace: Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    primaryColor,
                    primaryDarkColor,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    child: Text(
                      "AM",
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Amine Mejri",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Amine.mejri1000@gmail.com",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Parametre de Compte",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardProfileWidget(
                    title: "Edit Profile",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardProfileWidget(
                    title: "Change Mot de passe",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardProfileWidget(
                    title: "notification",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardProfileWidget(
                    title: "Paiment",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardProfileWidget(
                    title: "A propos Iteams",
                    onTap: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardProfileWidget extends StatelessWidget {
  const CardProfileWidget({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.shade200,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
