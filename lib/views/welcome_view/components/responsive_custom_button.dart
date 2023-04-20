import 'package:flutter/material.dart';

import '../../../shared/colors.dart';

class ResponsiveCustomButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final void Function()? onTap;
  const ResponsiveCustomButton({
    super.key,
    this.isResponsive = false,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/button-one.png'),
          ],
        ),
      ),
    );
  }
}
