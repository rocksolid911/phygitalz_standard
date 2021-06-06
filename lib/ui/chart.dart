import 'package:flutter/material.dart';
import 'package:phygitalz_standard/components/TabCard.dart';
import 'package:phygitalz_standard/components/charts.dart';
import 'package:phygitalz_standard/components/linechart.dart';
import 'package:phygitalz_standard/components/linechartbuilder.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("charts"),
      ),
      body: Column(
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
                      right: 140,
                    ),
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 188,
                        // color: Colors.pinkAccent,
                        color: Colors.white,
                        child: Padding(
                          padding:  const EdgeInsets.only(left: 12.0,right:12 ,bottom: 7),
                          child: chartBuilder(),
                        ),
                      ),
                      top: 99,
                      right: -11.5,
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
                                  image: AssetImage('assets/images/electrical.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("car starter",style: TextStyle(fontWeight: FontWeight.bold),),
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
                              child: Text("2",style: TextStyle(fontSize: 42,color: Colors.purple),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text("incident",style: TextStyle(fontSize: 12),),
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
                              padding: const EdgeInsets.only(top: 8.0,right: 7),
                              child: Text("200",style: TextStyle(fontSize: 42,color: Colors.pink),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text("incident",style: TextStyle(fontSize: 12),),
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
         Container(
             height: 300,
             width: MediaQuery.of(context).size.width,
             child: lineChart()),
        ],
      ),
    );
  }
}