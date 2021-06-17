import 'package:flutter/material.dart';
import 'package:phygitalz_standard/components/TabCard.dart';
import 'package:phygitalz_standard/components/Tabcardlinechart.dart';
import 'package:phygitalz_standard/components/charts.dart';
import 'package:phygitalz_standard/components/combochart.dart';
import 'package:phygitalz_standard/components/dougnoutchart.dart';
import 'package:phygitalz_standard/components/googlegaugechart.dart';
import 'package:phygitalz_standard/components/horizontalgraph.dart';
import 'package:phygitalz_standard/components/horizontalgraphcharts.dart';
import 'package:phygitalz_standard/components/linechart.dart';
//import 'package:phygitalz_standard/components/linechartbuilder.dart';
import 'package:phygitalz_standard/responsive_screen/app_config.dart';

class BarChart extends StatelessWidget {
  BarChart({Key key}) : super(key: key);
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("charts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.blueAccent,
                  ),
                  //padding: EdgeInsets.all(50),
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 120,
                          height: 64,
                          // color: Colors.yellow,
                          color: Colors.white,
                          child: TabCard(),
                        ),
                        top: 50,
                        right: MediaQuery.of(context).size.width - 230,
                      ),
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 188,
                          // color: Colors.pinkAccent,
                          color: Colors.white,
                          child: chartBuilder(),
                        ),
                        top: 99,
                        right: -16,
                      ),
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          // color: Colors.green,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/electrical.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "car starter",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 220,
                      ),
                      Positioned(
                        child: Container(
                          width: 70,
                          height: 100,
                          // color: Colors.blueAccent,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.purple),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "incident",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 185,
                        left: 180,
                        // left: MediaQuery.of(context).size.width-140,
                      ),
                      Positioned(
                        child: Container(
                          width: 100,
                          height: 100,
                          //color: Colors.brown,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, right: 7),
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.pink),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "incident",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 185,
                        left: 250,
                        // left: MediaQuery.of(context).size.width-140,
                      ),
                    ],
                  ),
                ),
              ),
            ),
//*****************************1st graph end here***********************//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  // color: Colors.brown,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 70,
                            height: 50,
                            // color: Colors.green,
                            child: TabCardLine(),
                          ),
                        ),
                        bottom: 200,
                        right: 90,
                      ),
                      Positioned(
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.blueAccent,
                          child: CustomLChart(),
                        ),
                        top: 43,
                        right: 2.5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //***************************end of 2nd graph*********************//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 8,
                child: Stack(
                  children: [
                    PieChartSample2(),
                    Positioned(
                      child: Container(
                        //reference color
                        //color: Colors.deepPurpleAccent,
                        height: _appConfig.rH(6.5),
                        width: _appConfig.rW(16),
                        child: Column(children: [
                          Padding(
                            padding:  EdgeInsets.only(left: _appConfig.rWP(3.5)),
                            child: Text("Total days",style: TextStyle(fontSize: _appConfig.rH(1.5)),),
                          ),
                          Text("100"),
                        ],),
                      ),
                      left: _appConfig.rW(23.5),
                      top: _appConfig.rH(13),
                    ),
                  ],
                ),
              ),
            ),
            //*************************************end of 3rd chart********************//
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: _appConfig.rW(100),
                height: _appConfig.rH(50),
                child: Card(
                    elevation: 8,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            //reference color
                            // color: Color(0xFFF8E0F6),
                            constraints: BoxConstraints(
                              maxWidth: _appConfig.rW(80),
                              maxHeight: _appConfig.rH(40),
                            ),
                            child: GaugeChart.fromValue(
                                value: 0.75, color: Colors.green),
                          ),
                          top: _appConfig.rH(10),
                          left: _appConfig.rW(7),
                        ),
                        Positioned(
                          child: Container(
                            height: _appConfig.rH(5),
                            width: _appConfig.rW(25),
                            //reference color
                            // color: Colors.green,
                            child: Text(
                              "English",
                              style: TextStyle(fontSize: _appConfig.rW(6)),
                            ),
                          ),
                          top: _appConfig.rH(10),
                          left: _appConfig.rW(8),
                        ),
                        Positioned(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Avg",
                                style: TextStyle(
                                  fontSize: _appConfig.rH(2.5),
                                ),
                              ),
                              Text(
                                "0.75",
                                style: TextStyle(
                                  fontSize: _appConfig.rH(2.5),
                                ),
                              ),
                            ],
                          ),
                          top: _appConfig.rH(28),
                          left: _appConfig.rW(42),
                        ),
                        Positioned(
                          child: Text(
                            "0",
                            style: TextStyle(
                              fontSize: _appConfig.rH(2),
                            ),
                          ),
                          top: _appConfig.rH(45),
                          left: _appConfig.rW(35),
                        ),
                        Positioned(
                          child: Text(
                            "100",
                            style: TextStyle(
                              fontSize: _appConfig.rH(2),
                            ),
                          ),
                          top: _appConfig.rH(45),
                          left: _appConfig.rW(55),
                        ),
                      ],
                    )),
              ),
            ),
            //****************************end of 4th graph************************************//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.blueAccent,
                  ),
                  //padding: EdgeInsets.all(50),
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 120,
                          height: 64,
                          // color: Colors.yellow,
                          color: Colors.white,
                          child: TabCard(),
                        ),
                        top: 50,
                        right: MediaQuery.of(context).size.width - 230,
                      ),
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 188,
                          // color: Colors.pinkAccent,
                          color: Colors.white,
                          child: chartBuilder2(),
                        ),
                        top: 99,
                        right: -16,
                      ),
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          // color: Colors.green,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/electrical.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "car starter",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 220,
                      ),
                      Positioned(
                        child: Container(
                          width: 70,
                          height: 100,
                          // color: Colors.blueAccent,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.purple),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "incident",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 185,
                        left: 180,
                        // left: MediaQuery.of(context).size.width-140,
                      ),
                      Positioned(
                        child: Container(
                          width: 100,
                          height: 100,
                          //color: Colors.brown,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, right: 7),
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.pink),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "incident",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 185,
                        left: 250,
                        // left: MediaQuery.of(context).size.width-140,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //**************************end of 5th graph*************************//
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  child: OrdinalComboBarLineChart.withSampleData(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
