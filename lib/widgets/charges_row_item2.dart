import 'package:flutter/material.dart';
import 'package:trade_charges/constants/custom_colors.dart';
import 'package:trade_charges/widgets/text_widget.dart';

class RowWith2Title extends StatelessWidget {
  final String title;
  final String subTitle;
  final String value;
  const RowWith2Title(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  title: title, fontSize: 14, color: CustomColors.subTitleBlack),
              TextWidget(
                  title: subTitle,
                  fontSize: 12,
                  color: CustomColors.subTitleBlack),
            ],
          ),
          TextWidget(
              title: value, fontSize: 14, color: CustomColors.blackTextBold)
        ],
      ),
    );
  }
}
