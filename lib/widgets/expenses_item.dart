import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';

import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key, required this.expensesItemModel, required this.isSelected});
  final ExpensesItemModel expensesItemModel;
  @override
  final bool isSelected;
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(expensesItemModel: expensesItemModel)
        : InActiveItem(expensesItemModel: expensesItemModel);
  }
}
