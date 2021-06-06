import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:phygitalz_standard/components/linechartbuilder.dart';
import 'charts.dart';
class CustomLChart extends StatelessWidget {
  final List<Datalist> data;

  const CustomLChart({Key key,this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<charts.Series<Datalist, int>> series = [
      charts.Series(
          data: data,
          id: "DataConsumption",
          domainFn: (Datalist series, _) => series.date,
          measureFn: (Datalist series, _) => series.breakdown,
          colorFn: (Datalist series, _) => series.barColor,

          labelAccessorFn: (Datalist series, _) =>
          '${series.breakdown.toString()}'),

    ];

    return Container(
      //decoration: BoxDecoration(),
      height: 166,
      padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
      child: Card(
        //shape: RoundedRectangleBorder(side: BorderSide.none),
        elevation: 8,
        borderOnForeground: true,
        child: Column(
          children: <Widget>[
            Expanded(
              child: charts.LineChart(
                series,
                animate: true,

                //Asign a Custom style for the domain axis
                domainAxis: new charts.NumericAxisSpec(

                  //showAxisLine: true,
                  renderSpec: new charts.SmallTickRendererSpec(
                    minimumPaddingBetweenLabelsPx: 5,
                    // Tick and Label styling here.
                    labelStyle: new charts.TextStyleSpec(
                        fontSize: 6, // size in Pts.
                        color: charts.MaterialPalette.black),

                    // Change the line colors to match text color.
                    lineStyle: new charts.LineStyleSpec(
                        color: charts.MaterialPalette.black),
                  ),
                ),

                /// Assign a custom style for the measure axis.
                primaryMeasureAxis: new charts.NumericAxisSpec(
                  // show static tic at value o,50,and 100
                  tickProviderSpec: new charts.StaticNumericTickProviderSpec(
                    <charts.TickSpec<num>>[
                      charts.TickSpec<num>(0),
                     // charts.TickSpec<num>(50),
                      //charts.TickSpec<num>(100),
                    ],
                  ),
                  renderSpec: new charts.GridlineRendererSpec(
                    // Tick and Label styling here.
                    labelStyle: new charts.TextStyleSpec(
                        fontSize: 6, // size in Pts.
                        color: charts.MaterialPalette.black),

                    // Change the line colors to match text color.
                    lineStyle: new charts.LineStyleSpec(
                        color: charts.MaterialPalette.black),
                  ),
                ),

                behaviors: [

                  new charts.ChartTitle('Bottom title text',
                      titleStyleSpec: charts.TextStyleSpec(fontSize: 8),
                      behaviorPosition: charts.BehaviorPosition.bottom,
                      titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea),
                  new charts.ChartTitle('Start title',
                      titleStyleSpec: charts.TextStyleSpec(fontSize: 8),
                      behaviorPosition: charts.BehaviorPosition.start,
                      titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea),
                ],
                defaultRenderer:
                new charts.LineRendererConfig(includeArea: true,includePoints: true),
              ),
            )
          ],
        ),
      ),
    );
  }
  }

