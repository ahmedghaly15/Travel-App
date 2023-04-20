import 'package:flutter/material.dart';

import '../../../../shared/colors.dart';

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

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;
  const CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color, radius: radius);
  }
}

class CirclePainter extends BoxPainter {
  final Color color;
  final double radius;
  const CirclePainter({required this.color, required this.radius});

  @override
  void paint(
    Canvas canvas,
    Offset offset,
    ImageConfiguration configuration,
  ) {
    final Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    // To make the circle be in the middle & under the label
    final Offset circleOffset = Offset(
      configuration.size!.width / 2 - radius / 2,
      configuration.size!.height - radius,
    );
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}
