import 'package:due_kasir/controller/report_controller.dart';
import 'package:due_kasir/model/penjualan_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:signals/signals_flutter.dart';

class ReportVisitorWeekLy extends StatefulWidget {
  const ReportVisitorWeekLy({super.key});

  @override
  State<ReportVisitorWeekLy> createState() => _ReportVisitorWeekLyState();
}

class _ReportVisitorWeekLyState extends State<ReportVisitorWeekLy> {
  bool loading = true;
  Map<int, double> weeklyData = {
    1: 0,
    2: 0,
    3: 0,
    4: 0,
    5: 0,
    6: 0,
    7: 0,
  };

  @override
  void initState() {
    super.initState();
    // Using an effect to process data when the signal changes
    effect(() {
      reportController.reportIncome.value.map(
        data: (data) {
          initiateData(data);
        },
        error: (e, s) {
          if (mounted) {
            setState(() {
              loading = false;
            });
          }
        },
        loading: () {
          if (mounted) {
            setState(() {
              loading = true;
            });
          }
        },
      );
    });
  }

  Future<void> initiateData(Map<DateTime, List<PenjualanModel>> data) async {
    if (mounted) {
      setState(() {
        loading = true;
        weeklyData = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0};
      });
    }

    for (var entry in data.entries) {
      final weekday = entry.key.weekday;
      weeklyData[weekday] = (weeklyData[weekday] ?? 0) + entry.value.length;
    }

    if (mounted) {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    reportController.reportIncome.watch(context);

    return ShadCard(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Visitor Weekly'),
          ShadButton.ghost(
            onPressed: () {
              reportController.reportIncome.value.map(
                  data: (data) => initiateData(data),
                  error: (e, s) {},
                  loading: () {});
            },
            leading: const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.refresh,
                size: 16,
              ),
            ),
            child: const Text('Refresh'),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 250,
                child: BarChart(
                  BarChartData(
                    barTouchData: barTouchData,
                    titlesData: titlesData,
                    borderData: borderData,
                    barGroups: barGroups,
                    gridData: const FlGridData(show: false),
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                  ),
                ),
              ),
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mon';
        break;
      case 1:
        text = 'Tue';
        break;
      case 2:
        text = 'Wed';
        break;
      case 3:
        text = 'Thu';
        break;
      case 4:
        text = 'Fri';
        break;
      case 5:
        text = 'Sat';
        break;
      case 6:
        text = 'Sun';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  FlBorderData get borderData => FlBorderData(show: false);

  LinearGradient get _barsGradient => const LinearGradient(
        colors: [Colors.blue, Colors.cyan],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  List<BarChartGroupData> get barGroups {
    final Map<int, int> weekdayToIndex = {1: 0, 2: 1, 3: 2, 4: 3, 5: 4, 6: 5, 7: 6};
    return weeklyData.entries.map((entry) {
      final weekday = entry.key;
      final value = entry.value;
      return BarChartGroupData(
        x: weekdayToIndex[weekday]!,
        barRods: [
          BarChartRodData(
            toY: value,
            gradient: _barsGradient,
          )
        ],
        showingTooltipIndicators: [0],
      );
    }).toList()
      ..sort((a, b) => a.x.compareTo(b.x));
  }
}
