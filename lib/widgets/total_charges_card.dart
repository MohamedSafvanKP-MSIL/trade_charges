import 'package:flutter/material.dart';
import 'package:trade_charges/constants/custom_colors.dart';
import '../widgets/progress_indication_text.dart';

class TotalChargesCard extends StatelessWidget {
  const TotalChargesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Container(
        color: CustomColors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage('assets/card_image1.png'),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total Charges',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      '₹ 1404.00',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: LinearProgressIndicator(
                      color: CustomColors.greyProgress,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          CustomColors.purpleProgress),
                      value: 0.2,
                      minHeight: 18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProgressIndicationText(
                          title: '20% Trade Charges',
                          color: CustomColors.purpleProgress,
                          fontSize: 10,
                          textColor: CustomColors.customWhite,
                          leftPadding: 8,
                        ),
                        ProgressIndicationText(
                          title: '80% Non Trade Charges',
                          color: CustomColors.greyProgress,
                          fontSize: 10,
                          textColor: CustomColors.customWhite,
                          leftPadding: 8,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
