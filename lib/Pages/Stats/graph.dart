import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class graph extends StatelessWidget {
  const graph({Key? key}) : super(key: key);

  static final List<Coin> dData = [
    Coin(0, 10),
    Coin(1, 10),
    Coin(2, 10),
    Coin(3, 6),
    Coin(4, 5),
  ];

  @override
  Widget build(BuildContext context) {
    // charts.ScatterPlotChart
    List<charts.Series<Coin, int>> expensesAndRevenueSeries = [
      charts.Series(
        id: "Progress",
        data: dData,
        domainFn: (Coin pops, _) => pops.idx,
        measureFn: (Coin pops, _) => pops.value,
        colorFn: (Coin pops, __) =>
            charts.ColorUtil.fromDartColor(Color.fromARGB(255, 34, 192, 212)),
        areaColorFn: (Coin pops, __) =>
            charts.ColorUtil.fromDartColor(Color.fromARGB(26, 20, 109, 192)),
        patternColorFn: (Coin pops, __) =>
            charts.ColorUtil.fromDartColor(Colors.black),
      ),
    ];
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: charts.LineChart(
              expensesAndRevenueSeries,
              animate: true,
              defaultRenderer:
                  charts.LineRendererConfig(includeArea: true, stacked: false),
              primaryMeasureAxis: const charts.NumericAxisSpec(
                tickProviderSpec: charts.BasicNumericTickProviderSpec(
                  desiredTickCount: 10,
                ),
              ),
              behaviors: [
                charts.SeriesLegend(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Coin {
  final int idx;
  final int value;

  Coin(this.idx, this.value);
}
