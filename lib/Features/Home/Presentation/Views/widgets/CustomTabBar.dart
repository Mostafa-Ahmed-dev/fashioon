import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      isScrollable: true,
      indicatorColor: Colors.black,
      physics: BouncingScrollPhysics(),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(
          text: 'Featured',
        ),
        Tab(
          text: 'New Arrival',
        ),
        Tab(
          text: 'Summer',
        ),
        Tab(
          text: 'Winter',
        ),
        Tab(
          text: 'Blazer',
        ),
      ],
    );
  }
}
