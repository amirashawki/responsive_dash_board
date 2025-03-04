import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import 'package:responsive_dash_board/widgets/expenses_item.dart';

class ExpansesItemsList extends StatefulWidget {
  const ExpansesItemsList({super.key});

  @override
  State<ExpansesItemsList> createState() => _ExpansesItemsListState();
}

class _ExpansesItemsListState extends State<ExpansesItemsList> {
  final expensesItemList = [
    const ExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const ExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const ExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129')
  ];

  int isSelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: expensesItemList.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;

      return Expanded(
        child: GestureDetector(
          onTap: () {
            isSelectIndex = index;
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: ExpensesItem(
                expensesItemModel: item, isSelected: isSelectIndex == index),
          ),
        ),
      );
    }).toList());
  }
}
