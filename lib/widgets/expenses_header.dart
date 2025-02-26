import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses ',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFFF1F1F1)),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Monthly',
                  style: AppStyles.styleMedium16(context),
                ),
                SizedBox(
                  width: 18,
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        )
      ],
    );
  }
}
