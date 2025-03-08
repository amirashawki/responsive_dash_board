import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/expenses_section.dart';
import 'package:responsive_dash_board/widgets/quick_%20Invoice_section.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExpensesSection(),
        SizedBox(
          height: 24,
        ),
        QuickInvoiceSection()
      ],
    );
  }
}
