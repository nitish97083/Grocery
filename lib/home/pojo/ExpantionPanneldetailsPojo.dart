import 'package:flutter/cupertino.dart';

class ExpPlProductDetails {
  bool isExpanded;
  String header;
  BodyModel bodyModel;

  ExpPlProductDetails({this.isExpanded: false, this.header, this.bodyModel});
}

class BodyModel {

String details;
  BodyModel({this.details});
}


class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

   //***********************************************************************This is Second method of Expansion pannels */
// import 'package:flutter/material.dart';
// class Item {
//   Item({
//     this.expandedValue,
//     this.headerValue,
//     this.isExpanded = false,
//   });

//   String expandedValue;
//   String headerValue;
//   bool isExpanded;
// }


// List<Item> generateItems(int numberOfItems) {
//   return List.generate(numberOfItems, (int index) {
//     return Item(
//       headerValue: 'Panel $index',
//       expandedValue: 'This is item number $index',
//     );
//   });
// }

// // ...
// class StateFulls extends StatefulWidget {
//   @override
//   _StateFullsState createState() => _StateFullsState();
// }
// List<Item> _data = generateItems(8);
// class _StateFullsState extends State<StateFulls> {
//   @override
 


// @override
// Widget build(BuildContext context) {
//   return SingleChildScrollView(
//     child: Container(
//       child: _buildPanel(),
//     ),
//   );
// }

// Widget _buildPanel() {
//   return ExpansionPanelList(
//     expansionCallback: (int index, bool isExpanded) {
//       setState(() {
//         _data[index].isExpanded = !isExpanded;
//       });
//     },
//     children: _data.map<ExpansionPanel>((Item item) {
//       return ExpansionPanel(
//         headerBuilder: (BuildContext context, bool isExpanded) {
//           return ListTile(
//             title: Text(item.headerValue),
//           );
//         },
//         body: ListTile(
//           title: Text(item.expandedValue),
//           subtitle: Text('To delete this panel, tap the trash can icon'),
//           trailing: Icon(Icons.delete),
//           onTap: () {
//             setState(() {
//               _data.removeWhere((currentItem) => item == currentItem);
//             });
//           }
//         ),
//         isExpanded: item.isExpanded,
//       );
//     }).toList(),
//   );
// }
// }