import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_Background_Container.dart';



import 'package:responsive_dash_board/widgets/expenses_header.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          ExpensesHeader(),
          SizedBox(
            height: 16,
          ),

          // ExpansesItemsList()
        ],
      ),
    );
  }
}
