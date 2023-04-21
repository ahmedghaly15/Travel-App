import 'package:flutter/material.dart';

import 'package:travel_app/models/data_model.dart';
import 'package:travel_app/views/nav_views/main_view/components/places_tab_content.dart';

class TabsContent extends StatelessWidget {
  final List<DataModel> info;
  const TabsContent({
    Key? key,
    required this.info,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 400,
      width: double.maxFinite,
      child: TabBarView(
        controller: tabController,
        children: <Widget>[
          PlacesTabContent(info: info),
          const Text("Inspiration"),
          const Text("Emotions"),
        ],
      ),
    );
  }
}
