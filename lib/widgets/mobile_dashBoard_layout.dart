
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/allExpenses_quickInvoice_section.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';

class MobileDashBoardLayout extends StatelessWidget {
  const MobileDashBoardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
       
        children: [
          AllExpensesQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          CardSection()
        ],
      ),
    );
  }
}
