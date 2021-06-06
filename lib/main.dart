import 'package:flutter/material.dart';
//import 'package:phygitalz_standard/components/listviewcheckbox.dart';
import 'package:phygitalz_standard/ui/Buttons.dart';
import 'package:phygitalz_standard/ui/card1.dart';
import 'package:phygitalz_standard/ui/checkboxlist.dart';
import 'package:phygitalz_standard/ui/homescreen.dart';
import 'package:phygitalz_standard/ui/circularp.dart';
import 'package:phygitalz_standard/ui/searchbox.dart';
import 'package:phygitalz_standard/ui/tabwithcard.dart';
import 'package:phygitalz_standard/ui/textField.dart';
import 'package:phygitalz_standard/ui/chart.dart';
// import 'routes.dart';
// AppRoute route = AppRoute();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,),

     initialRoute: '/homescreen',
      routes: {
        '/homescreen': (BuildContext context) => HomeScreen(),
        '/progressindicator' : (BuildContext context) => CircularPIndicator(),
        '/Buttons': (BuildContext context) => ButtonsWidget(),
        '/TextFields': (BuildContext context) => TextFieldAnimated(),
        '/MainList' : (BuildContext context) => MainList(),
        '/SearchBox': (BuildContext context) => SearchBar(),
        '/Card1': (BuildContext context) => CardOne(),
        '/TabCard':  (BuildContext context) => TabWithCard(),
        '/chart': (BuildContext context) => BarChart(),
      },
    );
  }
}



