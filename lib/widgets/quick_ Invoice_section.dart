import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_Invoice_header.dart';
import 'package:responsive_dash_board/widgets/quick_form.dart';


class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFFFFFFF)),
      child: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 20,
            ),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            QuickForm(),
          ],
        ),
      ),
    );
  }
}
