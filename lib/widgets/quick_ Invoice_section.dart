import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/customer_row.dart';
import 'package:responsive_dash_board/widgets/custom_textfield.dart';

import 'package:responsive_dash_board/widgets/item_section.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_Invoice_header.dart';
import 'package:responsive_dash_board/widgets/quick_form.dart';
import 'package:responsive_dash_board/widgets/title_with_textField.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xFFFFFFFF)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuickInvoiceHeader(),
            SizedBox(
              height: 20,
            ),
            const LatestTransaction(),
            const Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
          const  QuickForm(),
            
          ],
        ),
      ),
    );
  }
}
