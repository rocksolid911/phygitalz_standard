import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:phygitalz_standard/components/gradientchip.dart';

class CardWoImage extends StatefulWidget {
  Function  onTap;
  Function  onPressed;
  double elevaton ;//elevation of card for shadow
  final String brackdown;
  final String desripttext;
  final String stchip;
  final String eqpname;
  final String partstype;
  final String issuetime;
  final String downtime;
  final String branch;
  final int gradientstclr;
  final int gradientmdclr;
  final int gradientendclr;
  final String ndchip;
  final double fontsize;
   CardWoImage({
     Key key,
     this.issuetime,
     this.eqpname,
     this.onTap,
     this.brackdown,
     this.branch,
     this.desripttext,
     this.downtime,
     this.elevaton,
     this.gradientendclr,
     this.gradientmdclr,
     this.gradientstclr,
     this.onPressed,
     this.partstype,
     this.stchip,
     this.ndchip,
     this.fontsize,
   }) : super(key: key);

  @override
  _CardWoImageState createState() => _CardWoImageState();
}

class _CardWoImageState extends State<CardWoImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(

        elevation: widget.elevaton,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              //color: Colors.blueAccent,
            ),
            //padding: EdgeInsets.all(50),
            width: MediaQuery.of(context).size.width,
            height: 350,

            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      //borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  top: 110,
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 4,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      //color: Colors.green,
                      color: Colors.white,
                      //borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  left: 4,
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Opacity(
                      opacity: 0.6,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  bottom: 200,
                  left: 4,
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 145,
                    child: Wrap(children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 220.0, top: 30, left: 10),
                            child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "${widget.brackdown}",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 20),
                            child: Wrap(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 15.0, left: 15, right: 5, top: 5),
                                child: Text(
                                  //max caracter 110
                                  "${widget.desripttext}",
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              )
                            ]),
                          ),
                        ],
                      ),
                    ]),
                    decoration: BoxDecoration(
                      //color: Colors.pink,
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  left: 4,
                  bottom: 205,
                ),
                Positioned(
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width - 250,
                    height: 35,
                    child: Chip(
                      label: Text("${widget.stchip}"),
                      backgroundColor: Colors.pinkAccent,
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.yellow,
                        color: Colors.white
                      // borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  left: 230,
                  bottom: 310,
                ),
                Positioned(
                  child: Container(

                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Column(
                      children: [
                        Wrap(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 105, bottom: 15, top: 8),
                            child: Opacity(
                                opacity: 0.6,
                                child: Text(
                                  "${widget.eqpname}",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 200.0,
                          ),
                          child: Opacity(
                              opacity: 0.6,
                              child: Text(
                                "${widget.partstype}",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                        ),
                        Wrap(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              top: 30,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("issued",style: TextStyle(fontSize: widget.fontsize),),
                                    ),
                                    Chip(
                                      label: Text("${widget.issuetime}"),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("down time"),
                                    ),
                                    Chip(
                                      label: Text("${widget.downtime}"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.pink,
                        color: Colors.white
                      // borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  left: 4,
                  top: 155,
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 285,
                    height: 140,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          child: Image(
                            image: AssetImage("assets/images/electrical.jpeg"),
                            // width: 100,
                            // height: 70,
                          ),
                        ),
                        Text("${widget.branch}"),
                        SizedBox(
                          height: 3,
                        ),
                        // Chip(
                        //   label: Text("Start"),
                        // ),
                        RaisedGradientChip(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(widget.gradientstclr),
                              Color(widget.gradientmdclr),
                              Color(widget.gradientendclr),
                            ],
                          ),
                          width: 40,
                          height: 70,
                          onPressed: widget.onPressed,
                          child: Text(
                            "${widget.ndchip}",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      // color: Colors.yellow,
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  left: 270,
                  top: 165,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
