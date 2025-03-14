
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InComeItem extends StatelessWidget {
  const InComeItem({
    super.key,
    required this.incomeItemModel,
  });

  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration:
            ShapeDecoration(color: incomeItemModel.color, shape: OvalBorder()),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeItemModel.value,
        style: AppStyles.styleSemiBold16,
      ),
    );
  }
}
