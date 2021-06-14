import 'package:flutter/material.dart';
Widget myBottomNav() {
  List<BottomNavigationBarItem> _item = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
        size: 30,
        color: Colors.black,
      ),
      title: Text(
        "HOME",
        style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          size: 30,
        ),
        title: Text(''))
  ];
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    ),
    child: BottomNavigationBar(
      //elevation: 0.0,
      items: _item,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.pinkAccent,
    ),
  );
}
//}
