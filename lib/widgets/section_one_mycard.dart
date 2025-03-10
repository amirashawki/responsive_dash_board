import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/list_DotIndicator.dart';
import 'package:responsive_dash_board/widgets/mycard_page_view.dart';

class SectionOneMycard extends StatefulWidget {
  const SectionOneMycard({super.key});

  @override
  State<SectionOneMycard> createState() => _SectionOneMycardState();
}

class _SectionOneMycardState extends State<SectionOneMycard> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MycardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        ListDotIndicator(
          currentPageIndex: currentPageIndex,
        ),
       

      ],
    );
  }
}
