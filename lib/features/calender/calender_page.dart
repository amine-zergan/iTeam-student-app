import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
import 'package:items_app/features/chat/presentation/components/app_bar_widget.dart';

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
              color: Colors.amber,
              height: 170,
              width: double.infinity,
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
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

class CalenderComponent extends StatelessWidget {
  const CalenderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      height: 120,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black12,
            ),
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
            flex: 9,
            child: Container(
              color: Colors.cyan,
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
