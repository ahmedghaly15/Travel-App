import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/layout/cubit/cubit.dart';
import 'package:travel_app/layout/cubit/states.dart';
import 'package:travel_app/models/data_model.dart';
import 'package:travel_app/views/nav_views/main_view/components/tabs_content.dart';

import '../../../shared/colors.dart';
import '../../../shared/components/description_text.dart';
import '../../../shared/components/title_text.dart';
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
    return BlocBuilder<TravelAppCubit, TravelAppStates>(
      builder: (context, state) {
        List<DataModel> info = TravelAppCubit.getObject(context).places;
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
            TabsContent(tabController: tabController, info: info),
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
      },
    );
  }
}
