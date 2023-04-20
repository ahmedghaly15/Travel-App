import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const DescriptionText({
    super.key,
    this.size = 16,
    required this.text,
    this.color = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        letterSpacing: 0.5,
      ),
    );
  }
}
