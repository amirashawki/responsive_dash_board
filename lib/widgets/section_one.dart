import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/section_one_mycard.dart';

import 'package:responsive_dash_board/widgets/transaction_history.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.vertical()),
      child:const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SectionOneMycard(),
           Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
         TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
