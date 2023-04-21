import 'package:flutter/material.dart';

import '../../../shared/colors.dart';
import '../../../shared/components/custom_button.dart';
import '../../../shared/components/responsive_custom_button.dart';

class FavAndBookButtons extends StatelessWidget {
  const FavAndBookButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomButton(
          onTap: () {},
          backgroundColor: Colors.white,
          size: 60,
          borderColor: AppColors.textColor1,
          child: const Icon(
            Icons.favorite_border,
            color: AppColors.textColor1,
          ),
        ),
        const SizedBox(width: 20),
        const ResponsiveCustomButton(
          text: 'Book Trip Now',
          isResponsive: true,
        ),
      ],
    );
  }
}
