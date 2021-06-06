import 'package:flutter/material.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({Key key}) : super(key: key);

  @override
  _ButtonsWidgetState createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  bool selectedButton10B = false;
  bool selectedButton10A = false;
  bool selectedButton9A = false;
  bool selectedButton9B = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 40,
                    width: 70,
                    text: "10B",
                    startcolor: 0xFFC987DE,
                    midcolor: 0xFF7A17AF,
                    endcolor: 0xFF7A17AF,
                    radius: 18,
                    activecolor: Colors.white,
                    inactivecolor: Color(0xFF7A17AF),
                    selected: selectedButton10B,
                    onTap: (){
                      setState(() {
                        selectedButton10B = true;
                        selectedButton10A = false;
                         selectedButton9B = false;
                         selectedButton9A = false;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 40,
                    width: 70,
                    text: "10A",
                    selected: selectedButton10A,
                    startcolor: 0xFFC987DE,
                    midcolor: 0xFF7A17AF,
                    endcolor: 0xFF7A17AF,
                    radius: 18,
                    activecolor: Colors.white,
                    inactivecolor: Color(0xFF7A17AF),
                    onTap: (){
                      setState(() {
                        selectedButton10B = false;
                        selectedButton10A = true;
                        selectedButton9B = false;
                        selectedButton9A = false;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 40,
                    width: 70,
                    text: "9A",
                    selected: selectedButton9A,
                    startcolor: 0xFFC987DE,
                    midcolor: 0xFF7A17AF,
                    endcolor: 0xFF7A17AF,
                    radius: 18,
                    activecolor: Colors.white,
                    inactivecolor: Color(0xFF7A17AF),
                    onTap: (){
                      setState(() {
                        selectedButton10B = false;
                        selectedButton10A = false;
                        selectedButton9B = false;
                        selectedButton9A = true;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 40,
                    width: 70,
                    text: "9B",
                    selected: selectedButton9B,
                    startcolor: 0xFFC987DE,
                    midcolor: 0xFF7A17AF,
                    endcolor: 0xFF7A17AF,
                    radius: 18,
                    activecolor: Colors.white,
                    inactivecolor: Color(0xFF7A17AF),
                    onTap: (){
                      setState(() {
                        selectedButton10B = false;
                        selectedButton10A = false;
                        selectedButton9B = true;
                        selectedButton9A = false;
                      });
                    },
                  ),
                ),
                // ButtonAnimated(),
                // ButtonAnimated(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
