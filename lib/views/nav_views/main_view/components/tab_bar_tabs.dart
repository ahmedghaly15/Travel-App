import 'package:flutter/material.dart';

import '../../../../shared/colors.dart';
import 'circle_tab_indicator.dart';

class TabBarTabs extends StatelessWidget {
  const TabBarTabs({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelPadding: const EdgeInsets.only(left: 20, right: 20),
        indicator: const CircleTabIndicator(
          color: AppColors.mainColor,
          radius: 3.5,
        ),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: AppColors.mainColor,
        labelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
        tabs: const [
          Tab(text: "Places"),
          Tab(text: "Inpiration"),
          Tab(text: "Emotions"),
        ],
      ),
    );
  }
}
