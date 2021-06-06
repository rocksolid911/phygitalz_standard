
import 'package:flutter/material.dart';

class TabCard extends StatefulWidget {
  const TabCard({Key key}) : super(key: key);

  @override
  _TabCardState createState() => _TabCardState();
}

class _TabCardState extends State<TabCard> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: TabBar(
              controller: _tabController,
              labelPadding: EdgeInsets.only(bottom: 0,left: 5),
              indicatorColor: Colors.pinkAccent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,//indicator size
              tabs: [
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Text("High",overflow: TextOverflow.ellipsis,maxLines: 1,textWidthBasis: TextWidthBasis.longestLine,),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text("Medium",overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(fontSize: 12),),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text("Low",overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(fontSize: 12),),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text("All",overflow: TextOverflow.ellipsis,maxLines: 1,textWidthBasis: TextWidthBasis.longestLine,style: TextStyle(fontSize: 12),),
                  ),
                ),
              ],
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left:8.0),
          //   child: Divider(thickness: 2,),
          // ),
         // SecondNestedTabBar(),
        ],
      ),
    );
  }
}