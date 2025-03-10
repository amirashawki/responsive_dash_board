import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/widgets/section_one_mycard.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => SectionOneMycard(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DesktopLayout()),
    );
  }
}
