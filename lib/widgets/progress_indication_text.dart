import 'package:flutter/material.dart';

class ProgressIndicationText extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final double fontSize;
  final double leftPadding;
  const ProgressIndicationText(
      {Key? key, required this.title, required this.color,required this.fontSize,required this.textColor,required this.leftPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: leftPadding,
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: fontSize, color: textColor),
          ),
        )
      ],
    );
  }
}
