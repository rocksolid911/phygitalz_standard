import 'package:flutter/material.dart';
import 'package:phygitalz_standard/main.dart';
import '../routes.dart';
class Comps extends StatelessWidget {
  final String id;
  final String title;
  Comps(this.id, this.title,);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed("/$title");
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.cyanAccent,
            child: Text("$title"),
          ),
        ),
      ),
    );
  }
}