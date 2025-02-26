

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/item.dart';

class CustomerRow extends StatelessWidget {
  const CustomerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Customer name',
              style: AppStyles.styleMedium16(context),
            ),
            SizedBox(
              width: 160,
            ),
            Text(
              'Customer Email',
              style: AppStyles.styleMedium16(context),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        const Row(
          children: [
            Item(
              text: 'Type customer name',
            ),
            SizedBox(
              width: 16,
            ),
            Item(
              text: 'Type customer email',
            )
          ],
        ),
      ],
    );
  }
}
