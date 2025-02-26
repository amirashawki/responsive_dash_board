import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
          color: Color(0xff4EB7F2), borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.imagesBalance),
                Icon(Icons.arrow_left_outlined)
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Text(
              'Balance',
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'April 2022',
              style: AppStyles.styleRegular14(context),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              r'$20,129',
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
