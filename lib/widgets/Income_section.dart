import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/Custom_Background_Container.dart';
import 'package:responsive_dash_board/widgets/expenses_header.dart';
import 'package:responsive_dash_board/widgets/in_come_details.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InComeHeader(),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: InComeDetails())
          ],
        )
      ],
    ));
  }
}

class InComeHeader extends StatelessWidget {
  const InComeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptions()
      ],
    );
  }
}
