import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';

class CalenderPageView extends StatelessWidget {
  const CalenderPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          const AppBarCalenderComponentWidget(),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              margin: EdgeInsets.zero,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "December ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: Text(
                                    "2024 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.calendar_month_outlined,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  iconSize: 20,
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 25,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: 30,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const CalenderComponent();
              },
            ),
          )
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "19:00",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2H30min",
          ),
        ],
      ),
    );
  }
}

class CalenderComponent extends StatelessWidget {
  const CalenderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      margin: const EdgeInsets.only(bottom: 5),
      height: 110,
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: TimeWidget(),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      primaryColor,
                      iconColorActive,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: iconColorActive,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              margin: const EdgeInsets.only(
                right: 10,
                top: 10,
                bottom: 10,
              ),
              padding: const EdgeInsets.all(
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Programmation Oriente object",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Iteam Plateform",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Color.fromRGBO(255, 234, 234, 1),
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppBarCalenderComponentWidget extends StatelessWidget {
  const AppBarCalenderComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      centerTitle: false,
      floating: true,
      pinned: true,
      leading: const Padding(
        padding: EdgeInsets.all(10),
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
            print("======== camera luncher =======");
          },
          icon: const Icon(
            Icons.video_call_outlined,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            print("======== camera luncher =======");
          },
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        )
      ],
      title: Text(
        "Calender",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
