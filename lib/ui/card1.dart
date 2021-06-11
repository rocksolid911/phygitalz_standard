import 'package:flutter/material.dart';
import 'package:phygitalz_standard/components/cardwithoutimage.dart';
class CardOne extends StatefulWidget {
  const CardOne({Key key}) : super(key: key);

  @override
  _CardOneState createState() => _CardOneState();
}

class _CardOneState extends State<CardOne> {
  double height =400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cards"),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            //color: Colors.green,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CardWoImage(
                    issuetime: "today 12.45pm",
                    eqpname: "Yoke CNC Machining: EQP010",
                    onTap: (){},
                    onPressed: (){},
                    brackdown: "BreakDown, 1007",
                    branch: "Electrical",
                    desripttext: "Yoke welding current display is not working pl correct it immedietly",
                    downtime: "1hr 05min",
                    elevaton: 5,
                    partstype: "car starter-Yoke",
                    stchip: "High",
                    ndchip: "Start",
                    gradientstclr: 0xFFC987DE,
                    gradientmdclr: 0xFF7A17AF,
                    gradientendclr: 0xFF7A17AF,
                  ),
                  CardWoImage(
                    issuetime: "today 12.45pm",
                    eqpname: "Yoke CNC Machining: EQP010",
                    onTap: (){},
                    onPressed: (){},
                    brackdown: "BreakDown, 1007",
                    branch: "Electrical",
                    desripttext: "Yoke welding...",
                    downtime: "1hr 05min",
                    elevaton: 5,
                    partstype: "car starter-Yoke",
                    stchip: "High",
                    ndchip: "Start",
                    gradientstclr: 0xFFC987DE,
                    gradientmdclr: 0xFF7A17AF,
                    gradientendclr: 0xFF7A17AF,
                  ),
                  CardWoImage(
                    issuetime: "today 12.45pm",
                    eqpname: "Yoke CNC Machining: EQP010",
                    onTap: (){},
                    onPressed: (){},
                    brackdown: "BreakDown, 1007",
                    branch: "Electrical",
                    desripttext: "Yoke welding current display is not working pl correct it immedietly",
                    downtime: "1hr 05min",
                    elevaton: 5,
                    partstype: "car starter-Yoke",
                    stchip: "High",
                    ndchip: "Start",
                    gradientstclr: 0xFFC987DE,
                    gradientmdclr: 0xFF7A17AF,
                    gradientendclr: 0xFF7A17AF,
                    fontsize: 6,
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
