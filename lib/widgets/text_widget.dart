import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  const TextWidget({
    Key? key,
    required this.title,
    required this.fontSize,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
