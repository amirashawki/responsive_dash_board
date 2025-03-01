import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expensesItemModel});
  final ExpensesItemModel expensesItemModel;
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpensesItemHeader(
              image: expensesItemModel.image,
            ),
            SizedBox(
              height: 34,
            ),
            Text(expensesItemModel.title,
                style: AppStyles.styleSemiBold16(context)),
            const SizedBox(
              height: 8,
            ),
            Text(
              expensesItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            SizedBox(
              height: 16,
            ),
            Text(expensesItemModel.price,
                style: AppStyles.styleSemiBold24(context))
          ],
        ),
      ),
    );
  }
}

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 60,
            width: 60,
            decoration:
                ShapeDecoration(shape: OvalBorder(), color: Color(0xFFFAFAFA)),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(
                image,
              ),
            )),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        )
      ],
    );
  }
}
