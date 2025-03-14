import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_textfield.dart';

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
              style: AppStyles.styleMedium16,
            ),
            SizedBox(
              width: 205,
            ),
            Text(
              'Item mount',
              style: AppStyles.styleMedium16,
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        const Row(
          children: [
            CustomTextfield(
              text: 'Type customer name',
            ),
            SizedBox(
              width: 16,
            ),
            CustomTextfield(
              text: 'USD',
            )
          ],
        ),
      ],
    );
  }
}
