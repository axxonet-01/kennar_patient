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

class DonutChart1 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  DonutChart1({
    Key? key,
    required this.width,
    required this.height,
    required this.jan,
    required this.feb,
    required this.mar,
    required this.apr,
    required this.may,
    required this.june,
    required this.july,
    required this.aug,
    required this.sep,
    required this.oct,
    required this.nov,
    required this.dec,
    required this.total,
  }) : super(key: key);
  final double width;
  final double height;
  final double jan;
  final double feb;
  final double mar;
  final double apr;
  final double may;
  final double june;
  final double july;
  final double aug;
  final double sep;
  final double oct;
  final double nov;
  final double dec;
  final double total;

  @override
  DonutChart1State createState() => DonutChart1State();
}

class DonutChart1State extends State<DonutChart1> {
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
      ChartData('Jan', widget.jan, Color.fromRGBO(138, 97, 255, 1),
          widget.jan.toString()),
      ChartData('Feb', widget.feb, Color.fromRGBO(255, 165, 0, 1),
          widget.feb.toString()),
      ChartData('Mar', widget.mar, Color.fromRGBO(229, 186, 74, 1),
          widget.mar.toString()),
      ChartData('Apr', widget.apr, Color.fromRGBO(129, 41, 244, 1),
          widget.apr.toString()),
      ChartData('May', widget.may, Color.fromRGBO(74, 87, 193, 1),
          widget.may.toString()),
      ChartData('June', widget.june, Color.fromRGBO(64, 141, 208, 1),
          widget.june.toString()),
      ChartData('July', widget.july, Color.fromRGBO(47, 31, 134, 1),
          widget.july.toString()),
      ChartData('Aug', widget.aug, Color.fromRGBO(92, 107, 244, 1),
          widget.aug.toString()),
      ChartData('Sep', widget.sep, Color.fromRGBO(143, 92, 181, 1),
          widget.sep.toString()),
      ChartData('Oct', widget.oct, Color.fromRGBO(164, 135, 237, 1),
          widget.oct.toString()),
      ChartData('Nov', widget.nov, Color.fromRGBO(10, 234, 234, 231),
          widget.nov.toString()),
      ChartData('Dec', widget.dec, Color.fromRGBO(106, 128, 201, 1),
          widget.dec.toString()),
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
