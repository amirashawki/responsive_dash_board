import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Income_section.dart';
import 'package:responsive_dash_board/widgets/section_one.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionOne(),
        SizedBox(
          height: 24,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
