import 'package:flutter/material.dart';
import 'package:flutter_shared_widgets/widgets/app_bar.dart';
import '../widgets/charge_card.dart';
import '../widgets/trade_charges.dart';
import '../widgets/non_trade_charges.dart';
import '../widgets/cashback.dart';
import '../constants/custom_colors.dart';

class ChargesScreen extends StatelessWidget {
  const ChargesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.secondaryHeaderColor,
      appBar: KycAppBar(
        title: "Charges",
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ChargesCard(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Showing trades from',
                    style: TextStyle(
                      fontSize: 12,
                      color: CustomColors.blackText,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      '1 Jun 2021 - 24 jun 2021',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: CustomColors.blackTextBold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            TradeCharges(),
            NonTradeChargesCard(),
            CashBackCard(),
          ],
        ),
      ),
    );
  }
}
