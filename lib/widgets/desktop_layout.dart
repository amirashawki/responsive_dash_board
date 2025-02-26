import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';

import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child: AllExpenses(),
          ),
          Expanded(
              flex: 1,
              child: SizedBox(
                width: 200,
              ))
        ],
      ),
    );
  }
}
