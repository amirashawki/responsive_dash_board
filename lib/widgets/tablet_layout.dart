import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/mobile_dashBoard_layout.dart';

class TabletLayoutDashboard extends StatelessWidget {
  const TabletLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        // Container(
          
        //     height: 500,
        //     width: 300,
        //   color: Colors.red,)
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: MobileDashBoardLayout(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
