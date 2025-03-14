import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses ',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xFFF1F1F1)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Monthly',
              style: AppStyles.styleMedium16,
            ),
            const SizedBox(
              width: 18,
            ),
            Transform.rotate(
                angle: -1.57079633,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF064061),
                ))
          ],
        ),
      ),
    );
  }
}
