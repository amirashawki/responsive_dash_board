import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/trans_item.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionOne();
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.vertical()),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              'My Card',
              style: AppStyles.styleSemiBold20(context),
            ),
            const SizedBox(
              height: 20,
            ),
            const MyCard(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Transaction History',
                    style: AppStyles.styleSemiBold20(context)),
                const Expanded(child: SizedBox()),
                Text(
                  'See all',
                  style: AppStyles.styleMedium16(context)
                      .copyWith(color: Color(0xFF4EB7F2)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '13 April 2022',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Color(0xFFAAAAAA)),
            ),
            const SizedBox(
              height: 16,
            ),
            const TransItem(
              text: 'Cash Withdrawal',
              data: '13 Apr, 2022 ',
              price: r'$20,129',
            ),
            const SizedBox(
              height: 12,
            ),
            const TransItem(
              text: 'Landing Page project',
              data: '13 Apr, 2022 at 3:30 PM',
              price: r'$2,000',
            ),
            const SizedBox(
              height: 12,
            ),
            const TransItem(
              text: 'Juni Mobile App project',
              data: '13 Apr, 2022 at 3:30 PM',
              price: r'$20,129',
            ),
          ],
        ),
      ),
    );
  }
}
