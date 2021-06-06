// import 'package:flutter/material.dart';
//
// class CheckBoxList extends StatefulWidget {
//   @override
//   CheckBoxListState createState() => new CheckBoxListState();
// }
//
// class CheckBoxListState extends State {
//   Map<String, bool> values = {
//     'Apple': false,
//     'Banana': false,
//     'Cherry': false,
//     'Mango': false,
//     'Orange': false,
//   };
//
//   var tmpArray = [];
//
//   getCheckboxItems() {
//     values.forEach((key, value) {
//       if (value == true) {
//         tmpArray.add(key);
//       }
//     });
//
//     // Printing all selected items on Terminal screen.
//     print(tmpArray);
//     // Here you will get all your selected Checkbox items.
//
//     // Clear array after use.
//     tmpArray.clear();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("checkbox"),
//       ),
//       body: Column(
//         children: <Widget>[
//           RaisedButton(
//             child: Text(
//               " Get Selected Checkbox Items ",
//               style: TextStyle(fontSize: 18),
//             ),
//             onPressed: getCheckboxItems,
//             color: Colors.deepOrange,
//             textColor: Colors.white,
//             splashColor: Colors.grey,
//             padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//           ),
//           Expanded(
//             child: ListView(
//               children: values.keys.map((String key) {
//                 return new CheckboxListTile(
//                   title: new Text(key),
//                   value: values[key],
//                   activeColor: Colors.blueAccent,
//                   checkColor: Colors.white,
//                   controlAffinity: ListTileControlAffinity.leading,
//                   onChanged: (bool value) {
//                     setState(() {
//                       values[key] = value;
//                     });
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
