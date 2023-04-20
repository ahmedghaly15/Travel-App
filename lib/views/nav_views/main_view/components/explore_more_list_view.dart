import 'package:flutter/material.dart';

import '../../../../shared/colors.dart';
import '../../../../shared/components/description_text.dart';

class ExploreMoreListView extends StatelessWidget {
  final Map<String, String> images = const {
    'balloning.png': 'Balloning',
    'hiking.png': 'Hiking',
    'kayaking.png': 'Kayaking',
    'snorkling.png': 'Snorkling',
  };
  const ExploreMoreListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/${images.keys.elementAt(index)}',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DescriptionText(
                  text: images.values.elementAt(index),
                  size: 14,
                  color: AppColors.textColor2,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
