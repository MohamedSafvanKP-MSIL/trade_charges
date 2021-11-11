import 'package:flutter/material.dart';
import 'package:trade_charges/constants/custom_colors.dart';
import '../widgets/charges_heading_text.dart';
import '../widgets/charges_row_item1.dart';
import '../widgets/charges_row_item2.dart';

class TradeCharges extends StatelessWidget {
  const TradeCharges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.customWhite,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: ChargesHeadingText(
                  title: 'Trade Charges',
                  color: CustomColors.purpleProgress,
                  value: '₹ 691.00',
                ),
              ),
              RowWith2Title(
                title: 'Brokerage',
                subTitle: 'Applicable only if traded in given month',
                value: '₹ 71.00',
              ),
              RowWith1Title(
                title: 'Intraday',
                value: '₹ 71.00',
              ),
              RowWith1Title(
                title: 'Delivery',
                value: '₹ 0.00',
              ),
              Divider(),
              RowWith2Title(
                title: 'Exchange Turnover Charges',
                subTitle: 'Charged by exchange on the trade value',
                value: '₹ 120.00',
              ),
              Divider(),
              RowWith2Title(
                title: 'Taxes',
                subTitle: 'Charged by central/state govt. and SEBI',
                value: '₹ 450.00',
              ),
              RowWith1Title(
                title: 'STT',
                value: '₹ 150.00',
              ),
              RowWith1Title(
                title: 'GST',
                value: '₹ 150.00',
              ),
              RowWith1Title(
                title: 'SEBI Tax',
                value: '₹ 150.00',
              ),
              Divider(),
              RowWith2Title(
                title: 'Stamp Duty',
                subTitle: 'Charged by =state govt.',
                value: '₹ 50.00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
