import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/item.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Item name',
              style: AppStyles.styleMedium16(context),
            ),
            SizedBox(
              width: 205,
            ),
            Text(
              'Item mount',
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
              text: 'USD',
            )
          ],
        ),
      ],
    );
  }
}