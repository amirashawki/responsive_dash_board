import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/customer_row.dart';

import 'package:responsive_dash_board/widgets/item_section.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_Invoice_header.dart';

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
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const QuickInvoiceHeader(),
              SizedBox(
                height: 20,
              ),
              
             const LatestTransaction(),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomerRow(),

              const SizedBox(
                height: 24,
              ),
              const ItemSection(),

              const SizedBox(
                height: 24,
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 53, right: 77),
                    child: Text(
                      'Add more details',
                      style: AppStyles.styleSemiBold18(context)
                          .copyWith(color: Color(0xFF4EB7F2)),
                    ),
                  ),
                  const CustomButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
