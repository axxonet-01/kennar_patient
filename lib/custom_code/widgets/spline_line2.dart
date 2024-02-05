// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import 'index.dart'; // Imports other custom widgets

//import 'package:kennar_u_a_t1/custom_code/widgets/donut_chart.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class SplineLine2 extends StatefulWidget {
  const SplineLine2({
    Key? key,
    this.width,
    this.height,
    required this.chartData,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic> chartData;

  @override
  _SplineLine2State createState() => _SplineLine2State();
}

class ChartData {
  final String x;
  final double y1;
  final double y2;
  // final double y3;
  // final double y4;

  ChartData(this.x, this.y1, this.y2);
}

class _SplineLine2State extends State<SplineLine2> {
  late TrackballBehavior trackballBehavior;

  @override
  void initState() {
    trackballBehavior = TrackballBehavior(
      enable: true,
      lineType: TrackballLineType.vertical,
    );
    super.initState();
  }

  // final List<ChartData> chartData = [
  //   ChartData('Jan', 20, 25, 15, 30),
  //   ChartData('Feb', 30, 20, 10, 25),
  //   ChartData('Mar', 25, 30, 20, 15),
  //   ChartData('Apr', 15, 35, 25, 20),
  // ];

  @override
  Widget build(BuildContext context) {
    print(widget.chartData);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.white,
            child: SfCartesianChart(
              legend: Legend(isVisible: true),
              primaryXAxis: CategoryAxis(
                majorGridLines: MajorGridLines(
                  color: Colors.transparent, // Remove major gridlines
                  width: 0, // Set width to 0 to remove the X-axis line
                ),
                minorGridLines: MinorGridLines(
                    color: Colors.transparent), // Remove minor gridlines
              ),
              series: <ChartSeries>[
                LineSeries<ChartData, String>(
                  enableTooltip: true,
                  isVisibleInLegend: true,
                  legendIconType: LegendIconType.circle,
                  legendItemText: 'ER visits',
                  color: Color.fromRGBO(138, 97, 255, 1),
                  dataSource: getChartDataList(widget.chartData),
                  markerSettings: MarkerSettings(
                    isVisible: true,
                    shape: DataMarkerType.rectangle,
                    width: 8,
                    height: 8,
                  ),
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y1,
                ),
                LineSeries<ChartData, String>(
                  dataSource: getChartDataList(widget.chartData),
                  enableTooltip: true,
                  isVisibleInLegend: true,
                  legendIconType: LegendIconType.diamond,
                  legendItemText: 'Specialist visits',
                  color: Color.fromRGBO(254, 140, 19, 1),
                  markerSettings: MarkerSettings(
                    isVisible: true,
                    shape: DataMarkerType.diamond,
                    width: 8,
                    height: 8,
                  ),
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y2,
                ),
                // LineSeries<ChartData, String>(
                //   dataSource: getChartDataList(widget.chartData),
                //   enableTooltip: true,
                //   isVisibleInLegend: true,
                //   legendIconType: LegendIconType.diamond,
                //   legendItemText: 'Total cholesterol',
                //   markerSettings: MarkerSettings(
                //     isVisible: true,
                //     shape: DataMarkerType.circle,
                //     width: 8,
                //     height: 8,
                //   ),
                //   xValueMapper: (ChartData data, _) => data.x,
                //   yValueMapper: (ChartData data, _) => data.y3,
                // ),
                // LineSeries<ChartData, String>(
                //   dataSource: getChartDataList(widget.chartData),
                //   enableTooltip: true,
                //   isVisibleInLegend: true,
                //   legendIconType: LegendIconType.diamond,
                //   legendItemText: 'Triglycerides',
                //   markerSettings: MarkerSettings(
                //     isVisible: true,
                //     shape: DataMarkerType.triangle,
                //     width: 8,
                //     height: 8,
                //   ),
                //   xValueMapper: (ChartData data, _) => data.x,
                //   yValueMapper: (ChartData data, _) => data.y4,
                // ),
              ],
              trackballBehavior: trackballBehavior,
            ),
          ),
        ),
      ),
    );
  }

  List<ChartData> getChartDataList(List<dynamic> data) {
    List<ChartData> chartDataList = [];
    for (var i = 0; i < data.length; i++) {
      chartDataList.add(
        ChartData(
          data[i]["x"],
          data[i]["y1"] += 0.0,
          data[i]["y2"] += 0.0,
          // data[i]["y3"],
          // data[i]["y4"],

          //double.parse(data[i]["value"].toString()),
          //Color(int.parse(widget.colors[i])),
          // data[i]["value"].toString()));
        ),
      );
    }
    return chartDataList;
  }
}
