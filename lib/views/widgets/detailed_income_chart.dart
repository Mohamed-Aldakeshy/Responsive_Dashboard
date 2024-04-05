import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 50 : 40,
          title: '40%',
          value: 40,
          titleStyle: AppStyles.styleMedium16blue(context)
              .copyWith(color: Colors.white),
          color: const Color(0xff208BC7),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 50 : 40,
          title: '25%',
          value: 25,
          titleStyle: AppStyles.styleMedium16blue(context)
              .copyWith(color: Colors.white),
          color: const Color(0xff4DB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 50 : 40,
          title: '20%',
          value: 20,
          titleStyle: AppStyles.styleMedium16blue(context)
              .copyWith(color: Colors.white),
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 50 : 40,
          title: '22%',
          value: 22,
          titleStyle: AppStyles.styleMedium16blue(context)
              .copyWith(color: Colors.white),
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
