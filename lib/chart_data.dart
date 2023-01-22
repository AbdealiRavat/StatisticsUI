import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Charts({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  List<_SalesData> data = [
    _SalesData('Jan', 25),
    _SalesData('Feb', 27),
    _SalesData('Mar', 40),
    _SalesData('Apr', 35),
    _SalesData('May', 24),
    _SalesData('June', 40),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SfCartesianChart(
          borderWidth: 0,
          borderColor: Colors.transparent,
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            isVisible: true,
            borderWidth: 0,
            borderColor: Colors.transparent,
            minimum: 0,
          ),
          primaryYAxis: CategoryAxis(
            isVisible: false,
            borderWidth: 0,
            borderColor: Colors.transparent,
          ),
          legend: Legend(isVisible: false),
          series: <ChartSeries<_SalesData, String>>[
            SplineAreaSeries(
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Stats',
                // dataLabelSettings: const DataLabelSettings(isVisible: true),
                borderWidth: 2,
                gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 201, 231, 226), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderColor: const Color.fromARGB(255, 0, 119, 109)),
          ]),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
