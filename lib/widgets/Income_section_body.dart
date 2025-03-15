import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/in_come_details.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 300 && width <= 400 || width >= 1000
        ? const Padding(
        padding: EdgeInsets.all(16),
        child: DetailedIncomeChart(),
                  )
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: InComeDetails())
            ],
          );
   
  
  }
}
