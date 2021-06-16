import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:phygitalz_standard/components/BottomNavBar.dart';
import 'package:phygitalz_standard/components/CustomAppBar.dart';
import 'package:phygitalz_standard/model/components_model.dart';
import 'package:phygitalz_standard/model/components_view.dart';
import 'package:phygitalz_standard/responsive_screen/app_config.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppConfig _appConfig;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
      key: _drawerkey,
      endDrawer: myDrawer(),
      appBar: AppBar(
        title: Text("Components"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ), //this section help to cut the bottom area
        // backgroundColor: Colors.pink,
        leading: InkWell(
          child: Icon(Icons.sort),
          onTap: () {
            _drawerkey.currentState.openDrawer();
          },
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
        ),
        actions: [Container()], //to add gradient color to app bar
      ),
      body: InterFace(),
      drawer: myDrawer(),
      //assign pages index to bottomnav to show page accordingly in body
      bottomNavigationBar: mYBottomNav(),
    );
  }
}

class myDrawer extends StatelessWidget {
  AppConfig _appConfig;
  myDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    List<ListTile> _listdata = <ListTile>[
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent,
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ];
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              //color: Colors.pinkAccent,
              child: Padding(
                padding:  EdgeInsets.only(left: _appConfig.rWP(5)),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.pinkAccent,radius: _appConfig.rW(10),),
                    Padding(
                      padding:  EdgeInsets.only(left: _appConfig.rWP(4)),
                      child: Text("Vishal"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 650,
              width: double.infinity,
              //color: Colors.green,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: _listdata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(
                          left: _appConfig.rWP(5),
                        ),
                        child: _listdata[index].leading,
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(right: _appConfig.rWP(10)),
                        child: _listdata[index].title,
                      ),
                      onTap: _listdata[index].onTap,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InterFace extends StatefulWidget {
  InterFace({Key key}) : super(key: key);

  @override
  _InterFaceState createState() => _InterFaceState();
}

class _InterFaceState extends State<InterFace> {
  final List<Components> components = [
    Components(id: "id1", title: "progressindicator"),
    Components(id: "id2", title: "Buttons"),
    Components(id: "id3", title: "TextFields"),
    Components(id: "id4", title: "MainList"),
    Components(id: "id5", title: "SearchBox"),
    Components(id: "id6", title: "Card1"),
    Components(id: "id7", title: "TabCard"),
    Components(id: "id8", title: "chart"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: components.length,
        itemBuilder: (ctx, i) => Comps(components[i].id, components[i].title),
      ),
    );
  }
}
