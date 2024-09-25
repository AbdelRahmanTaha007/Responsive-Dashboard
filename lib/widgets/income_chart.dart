import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartSection extends StatelessWidget {
  const IncomeChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: IncomeChart(),
    );
  }
}

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
            radius: activeIndex == 0 ? 50 : 40,
            showTitle: false,
            value: 40,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            radius: activeIndex == 1 ? 50 : 40,
            showTitle: false,
            value: 25,
            color: const Color(0xFFE2DECD),
          ),
          PieChartSectionData(
            radius: activeIndex == 2 ? 50 : 40,
            showTitle: false,
            value: 20,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 50 : 40,
            showTitle: false,
            value: 15,
            color: const Color(0xFF4EB7F2),
          ),
        ]);
  }
}
