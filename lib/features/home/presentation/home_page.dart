import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.amber,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        currentIndex: index,
        iconSize: 25,
        selectedItemColor: iconColorActive,
        unselectedItemColor: iconColorInactive,
        // selectedLabelStyle: Theme.of(context).textTheme.titleSmall,
        items: const [
          BottomNavigationBarItem(
            label: "Accueil",
            icon: Icon(
              Icons.dashboard_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Asseignement",
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Calendrier",
            icon: Icon(
              Icons.calendar_today,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person_outline,
            ),
          )
        ],
      ),
    );
  }
}
