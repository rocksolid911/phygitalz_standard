//library gradientbutton;
import 'package:flutter/material.dart';

class RaisedGradientChip extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientChip({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 30.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

RaisedGradientChip myChips(String chipName, int color1, int color2, int color3) {
  return RaisedGradientChip(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              child: Text(
                chipName,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Container(
          //   child: Container(
          //     child: IconButton(
          //         icon: Icon(
          //           FontAwesomeIcons.times,
          //           color: Colors.white,
          //           size: 15.0,
          //         ),
          //         onPressed: () {
          //           //
          //         }),
          //   ),

        ],
      ),
      gradient: LinearGradient(
        colors: <Color>[Color(color1), Color(color2),Color(color3),],
      ),
      onPressed: () {
        print('button clicked');
      });
}
