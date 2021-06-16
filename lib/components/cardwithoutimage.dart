import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:phygitalz_standard/components/gradientchip.dart';
import 'package:phygitalz_standard/responsive_screen/app_config.dart';

class CardWoImage extends StatefulWidget {
  Function onTap;
  Function onPressed;
  double elevaton; //elevation of card for shadow
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
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Padding(
      padding: EdgeInsets.all(
        _appConfig.rW(1),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_appConfig.rW(4))),
        elevation: widget.elevaton,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: _appConfig.rH(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            //referencecolor
            //color: Colors.blueAccent,
          ),
          child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                child: Container(
                  height: _appConfig.rH(16),
                  width: _appConfig.rW(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      _appConfig.rW(4),
                    ),
                    color: Colors.brown,
                    // color.white,
                  ),
                ),
                right: _appConfig.rW(100) - 20,
              ),
              Positioned(
                child: Container(
                  height: _appConfig.rH(23.5),
                  width: _appConfig.rW(95),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // color: Colors.pinkAccent,
                  ),
                  // Color:Colors.white,
                ),
                left: _appConfig.rW(1),
              ),
              Positioned(
                child: Container(
                  //referencecolor
                  //color: Colors.cyanAccent,
                  height: _appConfig.rH(1.6),
                  width: _appConfig.rW(95),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: _appConfig.rWP(1.5), right: _appConfig.rWP(1.5)),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ),
                left: _appConfig.rW(1),
                bottom: _appConfig.rH(14),
              ),
              Positioned(
                child: Container(
                  //referencecolor
                  //color: Colors.orange,
                  height: _appConfig.rH(9),
                  width: _appConfig.rW(95),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: _appConfig.rWP(2),
                                // bottom: _appConfig.rHP(1.7),
                              ),
                              child: Text(widget.brackdown),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: _appConfig.rWP(2.5)),
                            child: RaisedGradientChip(
                              child: Text(
                                "${widget.stchip}",
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              ),
                              height: _appConfig.rH(3),
                              width: _appConfig.rW(12),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFE71E41),
                                  Color(0xFFE71E41),
                                  Color(0xFFE71E41),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          //size constarint for descript text
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: _appConfig.rW(90),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: _appConfig.rWP(2),
                              ),
                              child: GestureDetector(
                                child: Text(
                                  "${widget.desripttext}",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                onTap: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('AlertDialog Title'),
                                    content: Text('${widget.desripttext}'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                ),
                                //child: const Text('Show Dialog'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                left: _appConfig.rW(1),
                bottom: _appConfig.rH(15.2),
              ),
              Positioned(
                child: Container(
                  // referencecolor
                  //color: Colors.deepPurpleAccent,
                  height: _appConfig.rH(13),
                  width: _appConfig.rW(95),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: _appConfig.rWP(2),
                          ),
                          child: Text(
                            "${widget.eqpname}",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: _appConfig.rHP(0.2),
                              bottom: _appConfig.rHP(2.3),
                              left: _appConfig.rWP(2)),
                          child: Text(
                            "${widget.partstype}",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: _appConfig.rWP(2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Row(
                            children: [
                              Opacity(
                                  opacity: 0.4,
                                  child: Text(
                                    "Assigned to :",
                                    style: TextStyle(fontSize: 12),
                                  )),
                              Text(
                                "Radhakrisnan",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: _appConfig.rH(3),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: _appConfig.rWP(2), top: _appConfig.rHP(1)),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "Issued",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              // Chip(
                              //   label: Text(
                              //     "${widget.issuetime}",
                              //     style: TextStyle(fontSize: 8),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "${widget.issuetime}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    "Downtime",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                              // Chip(
                              //   label: Text(
                              //     "${widget.downtime}",
                              //     style: TextStyle(fontSize: 8),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "${widget.downtime}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                left: _appConfig.rW(1),
                top: _appConfig.rH(11),
              ),
              Positioned(
                child: Container(
                  //
                  height: _appConfig.rH(13),
                  width: _appConfig.rW(18),
                  //referencecolor
                  //color: Colors.yellowAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: _appConfig.rH(5)),
                        child: Image.asset('assets/images/electrical.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Text(
                          '${widget.branch}',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0,right: 3),
                        child: RaisedGradientChip(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(widget.gradientstclr),
                              Color(widget.gradientmdclr),
                              Color(widget.gradientendclr),
                            ],
                          ),
                          width: 100,
                          height: 30,
                          onPressed: widget.onPressed,
                          child: Text(
                            "${widget.ndchip}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                left: _appConfig.rW(77),
                top: _appConfig.rH(11),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
