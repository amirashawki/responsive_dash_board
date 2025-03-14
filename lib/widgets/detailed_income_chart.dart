import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  int activeIndex = -1;
  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: activeIndex == 0 ? 60 : 50,
              value: 40,
              showTitle: true,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 0 ? null : Colors.white),
              title: activeIndex == 0 ? 'Design service' : '40%',
              titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
              color: const Color(0xff208CC8)),
          PieChartSectionData(
              radius: activeIndex == 1 ? 60 : 50,
              showTitle: true,
              value: 25,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 1 ? null : Colors.white),
              title: activeIndex == 1 ? 'Design product' : '25%',
              titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              radius: activeIndex == 2 ? 60 : 50,
              showTitle: true,
              value: 20,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 2 ? null : Colors.white),
              title: activeIndex == 2 ? 'Product royalti' : '20%',
              titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
              color: const Color(0xff064061)),
          PieChartSectionData(
              radius: activeIndex == 3 ? 60 : 50,
              showTitle: true,
              value: 22,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 3 ? null : Colors.white),
              title: activeIndex == 3 ? 'Other' : '22%',
              titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
              color: const Color(0xffE2DECD)),
        ]);
  }
}
