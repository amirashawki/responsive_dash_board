import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/expenses_item.dart';

class ExpansesItemsListview extends StatelessWidget {
  const ExpansesItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 210,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ExpensesItem(),
              );
            }));
  }
}
