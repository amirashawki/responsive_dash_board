import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/allExpenses_quickInvoice_section.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                    hasScrollBody: false,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: AllExpensesQuickInvoiceSection(),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: CardSection(),
                        )),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
