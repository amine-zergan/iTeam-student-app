import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class AffectionPageView extends StatefulWidget {
  const AffectionPageView({super.key});

  @override
  State<AffectionPageView> createState() => _AffectionPageViewState();
}

class _AffectionPageViewState extends State<AffectionPageView>
    with TickerProviderStateMixin {
  late TabController controller;
  int selectIndex = 0;

  @override
  void initState() {
    controller =
        TabController(length: 3, vsync: this, initialIndex: selectIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Text(
              "AM",
            ),
          ),
        ),
        title: Text(
          "Affectations",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sell_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: size.height,
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Expanded(
              child: TabBar(
                controller: controller,
                enableFeedback: false,
                splashFactory: NoSplash.splashFactory,
                automaticIndicatorColorAdjustment: false,
                dividerColor: Colors.grey.shade50,
                onTap: (int index) {
                  setState(() {
                    selectIndex = index;
                  });
                },
                indicator: const BoxDecoration(),
                tabs: [
                  ChipComponent(
                    title: "A venir",
                    isSelected: selectIndex == 0,
                  ),
                  ChipComponent(
                    title: "En Retard",
                    isSelected: selectIndex == 1,
                  ),
                  ChipComponent(
                    title: "Terminés",
                    isSelected: selectIndex == 2,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 14,
              child: TabBarView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: size.height,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.13,
                        ),
                        Image.asset(
                          "assets/images/affectation.png",
                          width: size.width * 0.6,
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          "Aucune mission à venir pour le moment",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "essayez de naviguer vers  la classe individuelle pour vérifier les résultats.",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height,
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class ChipComponent extends StatelessWidget {
  const ChipComponent({
    super.key,
    required this.title,
    required this.isSelected,
  });
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      elevation: isSelected ? 10 : 0,
      side: BorderSide.none,
      color: WidgetStatePropertyAll(
        isSelected ? primaryColor : Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      label: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
