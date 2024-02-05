// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class DonutChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  DonutChart({
    Key? key,
    required this.width,
    required this.height,
    required this.thisMonth,
    required this.lastMonth,
    // required this.empty,
    required this.total,
  }) : super(key: key);
  final double width;
  final double height;
  final double thisMonth;
  final double lastMonth;
  // final double empty;
  final double total;

  @override
  DonutChartState createState() => DonutChartState();
}

class DonutChartState extends State<DonutChart> {
  late List<ChartData> data;

  late TooltipBehavior _tooltip;

  @override
  void initState() {
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('This Month', widget.thisMonth, Color.fromRGBO(138, 97, 255, 1),
          widget.thisMonth.toString()),
      ChartData('Last Month', widget.lastMonth,
          Color.fromARGB(255, 167, 141, 246), widget.lastMonth.toString()),
      // ChartData('Previous month', widget.empty,
      //     Color.fromARGB(223, 234, 234, 231), widget.empty.toString()),
    ];
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCircularChart(
                    annotations: <CircularChartAnnotation>[
                      CircularChartAnnotation(
                          widget: Container(
                              child: Text(widget.total.toString(),
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                      fontSize: 25))))
                    ],
                    legend: Legend(isVisible: true),
                    series: <CircularSeries>[
                      // Renders doughnut chart
                      DoughnutSeries<ChartData, String>(
                        explode: true,
                        explodeOffset: '10%',
                        innerRadius: '80%',
                        dataSource: chartData,
                        pointColorMapper: (ChartData data, _) => data.color,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        dataLabelMapper: (ChartData data, _) => data.text,
                        dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                            labelPosition: ChartDataLabelPosition.inside),
                        //dataLabelMapper: (ChartSampleData data, _) => data.text,
                      )
                    ]))));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color, this.text);
  final String x;
  final double y;
  final Color color;
  final String text;
}
