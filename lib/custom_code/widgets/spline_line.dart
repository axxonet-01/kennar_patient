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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spline Line Chart'),
        ),
        body: Center(
          child: SplineLine(
            width: 300,
            height: 200,
            chartData: [
              {"x": "Jan", "y": 10, "y1": 15},
              {"x": "Feb", "y": 20, "y1": 25},
              // Add more data here...
            ],
          ),
        ),
      ),
    );
  }
}

class SplineLine extends StatefulWidget {
  const SplineLine({
    Key? key,
    this.width,
    this.height,
    required this.chartData,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic> chartData;

  @override
  _SplineLineState createState() => _SplineLineState();
}

class _SplineLineState extends State<SplineLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(), // Set up categorical x-axis
            legend: Legend(isVisible: true),
            series: <ChartSeries>[
              SplineAreaSeries<ChartData, String>(
                // Use String for x-values
                dataSource: getChartDataList(widget.chartData),
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                borderColor: Color.fromARGB(255, 127, 131, 246),
                borderWidth: 2,
                color: Color.fromARGB(255, 164, 149, 235).withOpacity(0.7),
                name: 'HHb',
              ),
              SplineAreaSeries<ChartData, String>(
                // Use String for x-values
                dataSource: getChartDataList(widget.chartData),
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y1,
                borderColor: Color.fromARGB(255, 234, 145, 139),
                borderWidth: 2,
                color: Color.fromARGB(255, 239, 148, 142).withOpacity(0.7),
                name: 'O2Hb',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<ChartData> getChartDataList(List<dynamic> data) {
  List<ChartData> chartDataList = [];
  for (var i = 0; i < data.length; i++) {
    chartDataList.add(
      ChartData(
        data[i]["x"],
        data[i]["y"],
        data[i]["y1"],
      ),
    );
  }
  return chartDataList;
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final String x; // Changed x to String
  final double y;
  final double y1;
}
