import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.imagesBalance),
                Transform.rotate(
                  angle: 1.4434546,
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xFF064061),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Text('Balance', style: AppStyles.styleSemiBold16(context)),
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
            Text(r'$20,129', style: AppStyles.styleSemiBold24(context))
          ],
        ),
      ),
    );
  }
}
