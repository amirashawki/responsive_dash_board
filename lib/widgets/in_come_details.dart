import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';

import 'package:responsive_dash_board/widgets/Income_Item.dart';

class InComeDetails extends StatelessWidget {
  const InComeDetails({super.key});

  @override
  static const items = [
    IncomeItemModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    IncomeItemModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    IncomeItemModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    IncomeItemModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Column(
      children: items.map((e) => InComeItem(incomeItemModel: e)).toList(),
    );
  }
}
