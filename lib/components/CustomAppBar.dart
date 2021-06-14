import 'package:flutter/material.dart';

Widget mYAppBar({
  String title,
  bool centerTitle,
}) {
  return AppBar(
    title: Text(title),
    centerTitle: centerTitle,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ), //this section help to cut the bottom area
    // backgroundColor: Colors.pink,
    leading: GestureDetector(
      child: InkWell(
        child: Icon(Icons.sort),
      ),
      onTap: () {},
    ),
    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFFFF8080),
              Color(0xFFFF1AFF),
              Color(0xFFCC00CC),
            ],
          ),
        ),
      ),
    ), //to add gradient color to app bar
  );
}
