import 'package:flutter/material.dart';
import 'package:flutter_shared_widgets/utils/custom_colors.dart';
import 'package:trade_charges/constants/custom_colors.dart';
import '../widgets/progress_indication_text.dart';

class ChargesHeadingText extends StatelessWidget {
  final String title;
  final Color color;
  final String value;
  const ChargesHeadingText({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ProgressIndicationText(
              title: title,
              color: color,
              fontSize: 14,
              textColor: CustomColors.blackTextBold,
              leftPadding: 12,
            ),
          ],
        ),
        const Text(
          '₹ 691.00',
          style: TextStyle(
            fontSize: 14,
            color: CustomColors.blackTextBold,
          ),
        ),
      ],
    );
  }
}
