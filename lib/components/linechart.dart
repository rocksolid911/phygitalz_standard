import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:phygitalz_standard/components/linechartbuilder.dart';
import 'dart:math';

class Datalist {
  final int date;
  final int breakdown;
  final int incidents;

  Datalist({
    @required this.date,
    @required this.breakdown,
    this.incidents,
  });
}

class CustomLChart extends StatefulWidget {
  //List<Datalist> data;
  // map.entries.forEach((e) => list.add(Datalist(e.key, e.value)));
  // List<Datalist>data = Map.entries.map((e) => Datalist(e.date, e.breakdown)).toList();
  // //print(list);
  CustomLChart({
    Key key,
  }) : super(key: key);

  @override
  _CustomLChartState createState() => _CustomLChartState();
}

class _CustomLChartState extends State<CustomLChart> {
  final List<FlSpot> dummyData1 = List.generate(15, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  //List<Datalist> data ;
  final List<Color> _gradientColors = [
    const Color(0xFF6FFF7C),
    const Color(0xFF0087FF),
    const Color(0xFF5620FF),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Card(
        elevation: 8,
        borderOnForeground: true,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LineChart(
                  LineChartData(
                    extraLinesData: ExtraLinesData(
                      extraLinesOnTop: true,
                      horizontalLines: [HorizontalLine(
                        y: 5,
                        color: const Color.fromRGBO(197, 210, 214, 1),
                        strokeWidth: 2,
                        dashArray: [5, 10],
                        label: HorizontalLineLabel(
                          show: true,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5, bottom: 5),
                          style: const TextStyle(color: Colors.black, fontSize: 9),
                          labelResolver: (line) => 'H: ${line.y}',
                        ),
                      ),],
                    ),
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: true,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: const Color(0xFFFFFFFF),
                          strokeWidth: 1,
                        );
                      },
                      getDrawingVerticalLine: (value) {
                        return FlLine(
                          color: const Color(0xFFFFFFFF),
                          strokeWidth: 1,
                        );
                      },
                    ),
                    // rangeAnnotations: RangeAnnotations(
                    //   horizontalRangeAnnotations: ,
                    // ),
                    lineBarsData: [
                      LineChartBarData(
                          spots: dummyData1,
                          colors: _gradientColors,
                          colorStops: const [0.25, 0.5, 0.75],
                          gradientFrom: const Offset(0.5, 0),
                          gradientTo: const Offset(0.5, 1),
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            colors: _gradientColors
                                .map((color) => color.withOpacity(0.3))
                                .toList(),
                            gradientColorStops: const [0.25, 0.5, 0.75],
                            gradientFrom: const Offset(0.5, 0),
                            gradientTo: const Offset(0.5, 1),
                          ),
                          //dashArray: [2,6],
                          isCurved: true,
                          curveSmoothness: 0.1),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
