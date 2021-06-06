import 'package:flutter/material.dart';
import 'package:phygitalz_standard/ui/Buttons.dart';
import 'package:phygitalz_standard/ui/circularp.dart';
import 'package:phygitalz_standard/ui/textField.dart';
import 'ui/homescreen.dart';
class AppRoute{

  Map<String, StatefulWidget> routes = {
    "/homescreen" :HomeScreen(),
    "/progressindicator" :CircularPIndicator(),
    "/Buttons" : ButtonsWidget(),
    "/TextFields" :TextFieldAnimated(),
  };

  //MainScreen mainScreen;
  List<StatefulWidget> _stack = List<StatefulWidget>();

  int _seconds = 0;

  disposeLast(){
    if (_stack.isNotEmpty)
      _stack.removeLast();
    _printStack();
  }

  setDuration(int seconds){
    _seconds = seconds;
  }

  push(BuildContext _context, String name){
    var _screen = routes[name];
    // if (name == "/main")
    //   mainScreen = _screen;
    _stack.add(_screen);
    _printStack();
    Navigator.push(
      _context,
      PageRouteBuilder(
        transitionDuration: Duration(seconds: _seconds),
        pageBuilder: (_, __, ___) => _screen,
      ),
    );
    _seconds = 0;
  }

  pushToStart(BuildContext _context, String name) {
    var _screen = routes[name];
    // if (name == "/main")
    //   mainScreen = _screen;
    _stack.clear();
    _stack.add(_screen);
    _printStack();
    Navigator.pushAndRemoveUntil(
        _context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: _seconds),
          pageBuilder: (_, __, ___) => _screen,
        ),
            (route) =>route == null
    );
    _seconds = 0;
  }

  _printStack(){
    var str = "Screens Stack: ";
    for (var item in _stack)
      str = "$str -> $item";
    print(str);
  }

  pop(BuildContext context){
    Navigator.pop(context);
  }

  popToMain(BuildContext context){
    var _lenght = _stack.length;
    for (int i = 0; i < _lenght-1; i++) {
      if (Navigator.canPop(context))
        pop(context);
    }
  }

}