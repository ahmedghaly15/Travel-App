import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const TitleText({
    super.key,
    this.size = 30,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
    );
  }
}
