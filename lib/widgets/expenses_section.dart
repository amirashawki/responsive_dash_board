import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';

import 'package:responsive_dash_board/utils/app_images.dart';

import 'package:responsive_dash_board/widgets/expenses_header.dart';
import 'package:responsive_dash_board/widgets/expenses_item.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Color(0xFFFFFFFF)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ExpensesHeader(),
              const SizedBox(
                height: 20,
              ),
              ExpensesItem(
                  expensesItemModel: ExpensesItemModel(
                      image: Assets.imagesIncome,
                      title: 'Income',
                      date: 'April 2022',
                      price: r'$20,129'))
            ],
          ),
        ));
  }
}
