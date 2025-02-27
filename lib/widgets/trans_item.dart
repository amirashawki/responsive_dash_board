import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransItem extends StatelessWidget {
  const TransItem({
    super.key, required this.text, required this.data, required this.price,
  });
  final String text, data, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffFAFAFA)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: AppStyles.styleSemiBold16(context),
                ),
                Text(
                  data,
                  style: AppStyles.styleRegular16
                      .copyWith(color: Color(0xFFAAAAAA)),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Text(
              price,
              style: AppStyles.styleSemiBold20(context)
                  .copyWith(color: Color(0xFFF3735E)),
            )
          ],
        ),
      ),
    );
  }
}
