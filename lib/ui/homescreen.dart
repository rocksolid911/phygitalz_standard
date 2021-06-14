import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:phygitalz_standard/components/BottomNavBar.dart';
import 'package:phygitalz_standard/model/components_model.dart';
import 'package:phygitalz_standard/model/components_view.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("components"),
    //     backgroundColor: Colors.lightGreenAccent,
    //   ),
    //   body: InterFace(),
    // );
    return SideMenu(
      key: _sideMenuKey,
      background: Colors.pinkAccent,
      menu: buildMenu(),
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Components"),
          centerTitle: true,
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
            onTap: () {
              final _state = _sideMenuKey.currentState;
              if (_state.isOpened)
                _state.closeSideMenu();
              else
                _state.openSideMenu();
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
          ), //to add gradient color to app bar
        ),
        body: InterFace(),
        bottomNavigationBar: myBottomNav(),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 22.0,
                ),
                SizedBox(height: 16.0),
                LText(
                  "Components",
                  baseStyle: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          LListItem(
            backgroundColor: Colors.transparent,
            onTap: (){},
            leading: Icon(Icons.home,size: 20.0,color: Colors.white),
            title: Text("Home"),
            textColor: Colors.white,
            dense: true,
          ),
          LListItem(
            backgroundColor: Colors.transparent,
            onTap: (){},
            leading: Icon(Icons.verified_user,size: 20.0,color: Colors.white),
            title: Text("Profile"),
            textColor: Colors.white,
            dense: true,
          ),
          LListItem(
            backgroundColor: Colors.transparent,
            onTap: (){},
            leading: Icon(Icons.monetization_on,size: 20.0,color: Colors.white),
            title: Text("Wallet"),
            textColor: Colors.white,
            dense: true,
          ),
          LListItem(
            backgroundColor: Colors.transparent,
            onTap: (){},
            leading: Icon(Icons.star,size: 20.0,color: Colors.white),
            title: Text("Favorite"),
            textColor: Colors.white,
            dense: true,
          ),
        ],
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
