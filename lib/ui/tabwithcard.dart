import 'package:flutter/material.dart';
import 'package:phygitalz_standard/components/TabCard.dart';
class TabWithCard extends StatefulWidget {
  const TabWithCard({Key key}) : super(key: key);

  @override
  _TabWithCardState createState() => _TabWithCardState();
}

class _TabWithCardState extends State<TabWithCard> {
  @override
  Widget build(BuildContext context) {
    return TabCard();
  }
}
