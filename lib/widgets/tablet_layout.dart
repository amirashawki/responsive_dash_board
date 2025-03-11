import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/allExpenses_quickInvoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';

class TabletLayoutDashboard extends StatelessWidget {
  const TabletLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: MobileDashBoardLayout(),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
