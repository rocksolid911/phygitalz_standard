import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:phygitalz_standard/components/linechart.dart';
class Datalist {
  final int date;
  final int breakdown;
  final int incidents;

  Datalist(
      {@required this.date,
        @required this.breakdown,
        this.incidents,
       });
}

class lineChart extends StatelessWidget {
  final List<Datalist> data2 = [
    Datalist(
      date: 19,
      breakdown: 71,
      incidents: 5,

    ),
    Datalist(
      date: 20,
      breakdown: 48,
      incidents: 6,

    ),
    Datalist(
      date: 21,
      breakdown: 56,
      incidents: 8,

    ),
    Datalist(
      date: 22,
      breakdown: 35,
      incidents: 9,

    ),
    Datalist(
      date: 23,
      breakdown: 90,
      incidents: 15,

    ),
    Datalist(
      date: 24,
      breakdown: 67,
      incidents: 9,

    ),
    Datalist(
      date: 25,
      breakdown: 56,
      incidents: 6,

    ),
    Datalist(
      date: 26,
      breakdown: 71,
      incidents: 5,

    ),
    Datalist(
      date: 27,
      breakdown: 48,
      incidents: 6,

    ),
    Datalist(
      date: 28,
      breakdown: 56,
      incidents: 8,

    ),
    Datalist(
      date: 29,
      breakdown: 35,
      incidents: 9,

    ),
    Datalist(
      date: 30,
      breakdown: 90,
      incidents: 15,

    ),
    Datalist(
      date: 31,
      breakdown: 67,
      incidents: 9,

    ),

  ];
  @override
  Widget build(BuildContext context) {
    return CustomLChart();
  }
}
