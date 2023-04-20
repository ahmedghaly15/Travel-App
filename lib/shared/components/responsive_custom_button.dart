import 'package:flutter/material.dart';

import '../../../shared/colors.dart';
import 'description_text.dart';

class ResponsiveCustomButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final void Function()? onTap;
  final String? text;
  const ResponsiveCustomButton({
    super.key,
    this.isResponsive = false,
    this.width,
    this.onTap,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: isResponsive == true ? double.maxFinite : width,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor,
          ),
          child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: <Widget>[
              if (isResponsive == true)
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: DescriptionText(text: text ?? '', color: Colors.white),
                ),
              Image.asset('assets/images/button-one.png'),
            ],
          ),
        ),
      ),
    );
  }
}
