import 'package:flutter/material.dart';
import 'package:phygitalz_standard/model/components_model.dart';
import 'package:phygitalz_standard/model/components_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("components"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: InterFace(),
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
