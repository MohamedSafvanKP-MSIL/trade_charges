import 'package:flutter/material.dart';
import 'package:trade_charges/constants/custom_colors.dart';
import '../widgets/text_widget.dart';

class RowWith1Title extends StatelessWidget {
  final String title;
  final String value;
  const RowWith1Title({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              title: title, fontSize: 14, color: CustomColors.subTitleBlack),
          TextWidget(
              title: value, fontSize: 14, color: CustomColors.blackTextBold),
        ],
      ),
    );
  }
}
