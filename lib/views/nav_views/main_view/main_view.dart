import 'package:flutter/material.dart';
import 'package:travel_app/views/nav_views/main_view/components/tab_bar_content.dart';
import 'package:travel_app/views/welcome_view/components/description_text.dart';
import 'package:travel_app/views/welcome_view/components/title_text.dart';

import '../../../shared/colors.dart';
import 'components/explore_more_list_view.dart';
import 'components/tab_bar_tabs.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 75,
            left: 20,
          ),
          child: const TitleText(text: "Discover"),
        ),
        const SizedBox(height: 30),
        TabBarTabs(tabController: tabController),
        TabBarContent(tabController: tabController),
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              TitleText(text: "Explore more", size: 22),
              DescriptionText(
                text: "See all",
                color: AppColors.textColor1,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const ExploreMoreListView(),
      ],
    );
  }
}
