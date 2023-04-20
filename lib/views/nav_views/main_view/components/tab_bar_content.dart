import 'package:flutter/material.dart';

class TabBarContent extends StatelessWidget {
  const TabBarContent({
    super.key,
    required this.tabController,
  });

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
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 15, right: 8),
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/mountain.jpeg',
                    ),
                  ),
                ),
              );
            },
          ),
          const Text("new "),
          const Text("new "),
        ],
      ),
    );
  }
}
