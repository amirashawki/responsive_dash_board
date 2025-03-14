





import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/Custom_Background_Container.dart';
import 'package:responsive_dash_board/widgets/Income_section_body.dart';
import 'package:responsive_dash_board/widgets/expenses_header.dart';


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
        IncomeSectionBody(),
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
          style: AppStyles.styleSemiBold20,
        ),
        const RangeOptions()
      ],
    );
  }
}
