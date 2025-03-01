import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/section_one.dart';
import 'package:responsive_dash_board/widgets/trans_item.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SectionOne()),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
