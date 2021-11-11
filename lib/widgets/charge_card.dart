import 'package:flutter/material.dart';
import '../widgets/total_charges_card.dart';

class ChargesCard extends StatelessWidget {
  const ChargesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TotalChargesCard(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: const [
                   Text('See What Angel One Charged You'),
                  //  Text('Angel'),
                   Icon(Icons.toggle_on),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            )
          ],
        ),
      ),
    );
  }
}
