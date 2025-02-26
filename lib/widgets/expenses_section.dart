import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/expanses_items_listView.dart';
import 'package:responsive_dash_board/widgets/expenses_header.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Color(0xFFFFFFFF)),
        child:const  Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ExpensesHeader(),
              SizedBox(
                height: 20,
              ),
              ExpansesItemsListview()
            ],
          ),
        ));
  }
}
