import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final double size;
  final Color borderColor;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.child,
    required this.size,
    required this.borderColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: Center(child: child),
      ),
    );
  }
}
