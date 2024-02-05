// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

import 'package:syncfusion_flutter_charts/charts.dart';

class DynamicDonutChart extends StatefulWidget {
  const DynamicDonutChart({
    Key? key,
    this.width,
    this.height,
    required this.colors,
    required this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> colors;
  final List<dynamic> data;

  @override
  _DynamicDonutChartState createState() => _DynamicDonutChartState();
}

class _DynamicDonutChartState extends State<DynamicDonutChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCircularChart(
                    annotations: <CircularChartAnnotation>[
                      CircularChartAnnotation(
                          widget: Container(
                              child: Text(sumData(widget.data).toString(),
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
                        dataSource: getChartDataList(widget.data),
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

  double sumData(List<dynamic> data) {
    double sum = 0;
    for (var eachItem in data) {
      sum += double.parse(eachItem["value"].toString());
    }
    return sum;
  }

  List<ChartData> getChartDataList(List<dynamic> data) {
    List<ChartData> chartDataList = [];
    for (var i = 0; i < data.length; i++) {
      chartDataList.add(ChartData(
          data[i]["label"],
          double.parse(data[i]["value"].toString()),
          Color(int.parse(widget.colors[i])),
          data[i]["value"].toString()));
    }
    return chartDataList;
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color, this.text);
  final String x;
  final double y;
  final Color color;
  final String text;
}
