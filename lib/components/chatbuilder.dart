import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'charts.dart';

class DataChart extends StatelessWidget {
  final List<DataConsumption> data;


  const DataChart({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //List<charts.Series> seriesList;
    List<charts.Series<DataConsumption, String>> series = [
      charts.Series(
          data: data,
          id: "DataConsumption",
          domainFn: (DataConsumption series, _) => series.date.toString(),
          measureFn: (DataConsumption series, _) => series.breakdown,
          colorFn: (DataConsumption series, _) => series.barColor,

          labelAccessorFn: (DataConsumption series, _) =>
              '${series.breakdown.toString()}'),


          charts.Series(
            data: data,
          id: "DataConsumption",
          domainFn: (DataConsumption series2, _) => series2.date.toString(),
          measureFn: (DataConsumption series2, _) => series2.incidents,
          colorFn: (DataConsumption series2, _) => series2.barColor2,
          labelAccessorFn: (DataConsumption series2, _) =>
              '${series2.incidents.toString()}'),];

    return Container(
      //decoration: BoxDecoration(),
      height: 166,
      padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: charts.BarChart(
              //series2,
              //seriesList,
              series,
              animate: true,

              //Asign a Custom style for the domain axis
              domainAxis: new charts.OrdinalAxisSpec(

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
                    //charts.TickSpec<num>(50),
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
              barRendererDecorator: charts.BarLabelDecorator<String>(
                insideLabelStyleSpec: new charts.TextStyleSpec(fontSize: 6,color: charts.MaterialPalette.white),
                         //labelAnchor: charts.BarLabelAnchor.end,
                         outsideLabelStyleSpec: new charts.TextStyleSpec(fontSize: 8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
