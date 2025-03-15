import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/expenses_Item_header.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.expensesItemModel,
  });

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
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpensesItemHeader(
              image: expensesItemModel.image,
            ),
           const SizedBox(
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
          const  SizedBox(
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

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.expensesItemModel});
  final ExpensesItemModel expensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
        color: const Color(0xff4EB7F2),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpensesItemHeader(
              colorImage: Colors.white,
              backgroundImage:
                  Colors.white.withValues(alpha: .10000000149011612),
              image: expensesItemModel.image,
            ),
            SizedBox(
              height: 34,
            ),
            Text(expensesItemModel.title,
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color:const Color(0xffFFFFFF))),
            const SizedBox(
              height: 8,
            ),
            Text(
              expensesItemModel.date,
              style: AppStyles.styleRegular14
                 (context) .copyWith(color:const Color(0xffFAFAFA),),
            ),
          const  SizedBox(
              height: 16,
            ),
            Text(expensesItemModel.price,
                style: AppStyles.styleSemiBold24
                    (context).copyWith(color:const Color(0xffFFFFFF))),
          ],
        ),
      ),
    );
    ;
  }
}
