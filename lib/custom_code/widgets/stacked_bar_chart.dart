// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

import 'package:fl_chart/fl_chart.dart';

class StackedBarChart extends StatefulWidget {
  const StackedBarChart({
    Key? key,
    this.width,
    this.height,
    required this.colors,
    required this.xAxisData,
    required this.yAxisData,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> colors;
  final List<String> xAxisData;
  final List<dynamic> yAxisData;

  @override
  State<StatefulWidget> createState() => StackedBarChartState();
}

class StackedBarChartState extends State<StackedBarChart> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text = '';
    if (0 <= value && value < widget.xAxisData.length)
      text = widget.xAxisData[value as int];
    print(value);
    print(0 <= value && value > widget.xAxisData.length);
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.66,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceBetween,
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: leftTitles,
                    ),
                  ),
                  rightTitles: AxisTitles(),
                  topTitles: AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 20,
                    ),
                  ),
                ),
                barTouchData: BarTouchData(enabled: false),
                borderData: FlBorderData(show: false),
                gridData: FlGridData(show: false),
                barGroups: getbarGroups(widget.yAxisData),
                maxY: getMaxSum(widget.yAxisData),
              ),
            );
          },
        ),
      ),
    );
  }

  double getMaxSum(List<dynamic> data) {
    double maxSum = double.negativeInfinity;
    for (var array in data) {
      double sum = array.fold(
          0, (previousValue, element) => previousValue + (element as double));
      if (sum > maxSum) {
        maxSum = sum;
      }
    }
    int numDigits = maxSum.floor().toString().length;
    num powerOfTen = pow(10, numDigits - 1);

    maxSum += (powerOfTen / 2);
    return maxSum;
  }

  List<BarChartGroupData> getbarGroups(List<dynamic> jsonData) {
    List<BarChartGroupData> groupDataList = [];
    for (var i = 0; i < jsonData.length; i++) {
      groupDataList.add(generateGroupData(i, jsonData[i]));
    }
    return groupDataList;
  }

  List<BarChartRodData> generateRodData(List<dynamic> rodData) {
    List<BarChartRodData> rodDataList = [];
    double fromY = 0;
    double toY = 0;
    for (int i = 0; i < rodData.length; i++) {
      double value = rodData[i];
      toY = fromY + value;
      rodDataList.add(BarChartRodData(
        fromY: fromY,
        toY: toY,
        color: Color(int.parse(widget.colors[i])),
        width: 20,
        borderRadius: !(i + 1 < rodData.length)
            ? const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              )
            : (i == 0
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  )
                : BorderRadius.circular(0)),
      ));
      fromY = toY;
    }
    return rodDataList;
  }

  BarChartGroupData generateGroupData(
    int x,
    List<dynamic> rodData,
  ) {
    return BarChartGroupData(
        x: x, groupVertically: true, barRods: generateRodData(rodData));
  }
}
