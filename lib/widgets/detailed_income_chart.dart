import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChartSection extends StatelessWidget {
  const DetailedIncomeChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Expanded(child: DetailedIncomeChart()),
        ],
      ),
    );
  }
}

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.5, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            title: activeIndex == 0 ? "Design Service" : "40%",
            radius: activeIndex == 0 ? 50 : 40,
            value: 40,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            title: activeIndex == 1 ? "Design Product" : "25%",
            radius: activeIndex == 1 ? 50 : 40,
            value: 25,
            color: const Color(0xFFE2DECD),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            title: activeIndex == 2 ? "Product Royalty" : "20%",
            radius: activeIndex == 2 ? 50 : 40,
            value: 20,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            title: activeIndex == 3 ? "Other" : "15%",
            radius: activeIndex == 3 ? 50 : 40,
            value: 15,
            color: const Color(0xFF4EB7F2),
          ),
        ]);
  }
}
