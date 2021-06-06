import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'linechart.dart';

class Datalist {
  final int date;
  final int breakdown;
  final int incidents;
  final charts.Color barColor;
  final charts.Color barColor2;

  Datalist(
      {@required this.date,
        @required this.breakdown,
        @required this.barColor,
        this.incidents,
        this.barColor2});
}

class lineChart extends StatelessWidget {
  final List<Datalist> data2 = [
    Datalist(
      date: 25,
      breakdown: 71,
      incidents: 5,
      barColor2: charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
    Datalist(
      date: 26,
      breakdown: 1,
      incidents: 6,
      barColor2: charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
    Datalist(
      date: 27,
      breakdown: 15,
      incidents: 0,
      barColor2: charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
    Datalist(
      date: 28,
      breakdown: 10,
      incidents: 9,
      barColor2:charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
    Datalist(
      date: 29,
      breakdown: 90,
      incidents: 15,
      barColor2: charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
    Datalist(
      date: 30,
      breakdown: 20,
      incidents: 0,
      barColor2: charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
    Datalist(
      date: 31,
      breakdown: 20,
      incidents: 6,
      barColor2: charts.ColorUtil.fromDartColor(Colors.purple),
      barColor: charts.ColorUtil.fromDartColor(Colors.pink.shade700),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomLChart(
      data: data2,
    );
  }
}
