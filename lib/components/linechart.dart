import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
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
  double touchedValue;
  final List<FlSpot> dummyData1 = List.generate(15, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  //List<Datalist> data ;
  final List<Color> _gradientColors = [
    const Color(0xFF6FFF7C),
    const Color(0xFA9BEFB7),
    const Color(0xFFF4F4F6),
  ];
  final List<Color> chartlineclr = [
    Color(0xFF6FFF7C),
    Color(0xFF1EE311),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      borderOnForeground: true,
      child: Column(
        children: [
          Container(
            height: 190,
           // width: MediaQuery.of(context).size.width,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: LineChart(
                LineChartData(
                  //clipData: FlClipData(),
                  axisTitleData: FlAxisTitleData(show: true),
                  lineTouchData: LineTouchData(
                      getTouchedSpotIndicator:
                          (LineChartBarData barData, List<int> spotIndexes) {
                        return spotIndexes.map((spotIndex) {
                          final spot = barData.spots[spotIndex];
                          if (spot.x == 0) {
                            return null;
                          }
                          return TouchedSpotIndicatorData(
                            FlLine(
                                color: Colors.grey,
                                strokeWidth: 1,
                                dashArray: [1, 1]),
                            FlDotData(
                              getDotPainter: (spot, percent, barData, index) {
                                {
                                  return FlDotCirclePainter(
                                    radius: 8,
                                    color: Colors.green,
                                  );
                                  // strokeWidth: 5,);
                                  //strokeColor: Colors.deepOrange);
                                } //else {
                                //   return FlDotSquarePainter(
                                //     size: 16,
                                //     color: Colors.white,
                                //     strokeWidth: 5,
                                //     strokeColor: Colors.deepOrange,
                                //   );
                                // }
                              },
                            ),
                          );
                        }).toList();
                      },
                      touchTooltipData: LineTouchTooltipData(
                          tooltipBgColor: Colors.grey[350],
                          getTooltipItems:
                              (List<LineBarSpot> touchedBarSpots) {
                            return touchedBarSpots.map((barSpot) {
                              final flSpot = barSpot;
                              if (flSpot.x == 0) {
                                return null;
                              }

                              return LineTooltipItem(
                                '${dummyData1[flSpot.x.toInt()]} \n',
                                const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8
                                ),
                                // children: [
                                //   TextSpan(
                                //     text: flSpot.y.toString(),
                                //     style: TextStyle(
                                //       color: Colors.grey[100],
                                //       fontWeight: FontWeight.bold,
                                //     ),
                                //   ),
                                // TextSpan(
                                //   text: ' k ',
                                //   style: TextStyle(
                                //     fontStyle: FontStyle.italic,
                                //     fontWeight: FontWeight.normal,
                                //   ),
                                // ),
                                // TextSpan(
                                //   text: 'calories',
                                //   style: TextStyle(
                                //     fontWeight: FontWeight.normal,
                                //   ),
                                // ),
                                //],
                              );
                            }).toList();
                          }),
                      touchCallback: (LineTouchResponse lineTouch) {
                        final desiredTouch =
                            lineTouch.touchInput is! PointerExitEvent &&
                                lineTouch.touchInput is! PointerUpEvent;

                        if (desiredTouch && lineTouch.lineBarSpots != null) {
                          final value = lineTouch.lineBarSpots[0].x;

                          // if (value == 0 || value == 6) {
                          //   setState(() {
                          //     touchedValue = -1;
                          //   });
                          //   return null;
                          // }

                          setState(() {
                            touchedValue = value;
                          });
                        }
                        // else {
                        //   setState(() {
                        //     touchedValue = -1;
                        //   });
                        // }
                      }),
                  extraLinesData: ExtraLinesData(
                    extraLinesOnTop: true,
                    horizontalLines: [
                      HorizontalLine(
                        y: 5,
                        color: const Color.fromRGBO(197, 210, 214, 1),
                        strokeWidth: 2,
                        dashArray: [5, 5],
                        label: HorizontalLineLabel(
                          show: true,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 5, bottom: 5),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 10),
                          labelResolver: (line) => 'closing on:\n ${line.y}',
                        ),
                      ),
                    ],
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                  gridData: FlGridData(
                    show: false,
                    drawVerticalLine: true,
                    getDrawingHorizontalLine: (value) {
                      if (value == 0) {
                        return FlLine(
                          color: const Color(0xEE0D0D0E),
                          strokeWidth: 1,
                        );
                      } else {
                        return FlLine(
                          color: const Color(0xFFFFFFFF),
                          strokeWidth: 1,
                        );
                      }
                    },
                    getDrawingVerticalLine: (value) {
                      if (value == 0) {
                        return FlLine(
                          color: const Color(0xEE0D0D0E),
                          strokeWidth: 1,
                        );
                      } else {
                        return FlLine(
                          color: const Color(0xFFFFFFFF),
                          strokeWidth: 1,
                        );
                      }
                    },
                  ),
                  // rangeAnnotations: RangeAnnotations(
                  //   horizontalRangeAnnotations: ,
                  // ),
                  lineBarsData: [
                    LineChartBarData(
                        spots: dummyData1,
                        // colors: chartlineclr,
                        // colorStops: const [1, 1, 1],
                        //  gradientFrom: const Offset( 0,0),
                        //  gradientTo: const Offset(0, 0),
                        colors: [Colors.green],
                        barWidth: 2,
                        isStrokeCapRound: true,
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          colors: _gradientColors
                              .map((color) => color.withOpacity(0.3))
                              .toList(),
                          gradientColorStops: const [0.25, 0.5, 0.75],
                          gradientFrom: const Offset(1, 0.5),
                          gradientTo: const Offset(0, 1),
                        ),
                        //dashArray: [2,6],
                        isCurved: true,
                        curveSmoothness: 0.1),
                  ],
                  // showingTooltipIndicators: ShowingTooltipIndicators[]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
