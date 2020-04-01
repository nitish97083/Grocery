import 'package:flutter/material.dart';
class Register1 {
  static List registerLIst;
}
Widget textFieldText({
  String hintText,
  TextInputType k: TextInputType.text,
  icon: Icons.crop_square,
  String initialValue,
  validators,
   FocusNode currentFocusNode,
   FocusNode nextFocusNode,
   BuildContext context,
   String value
}) {
  return TextFormField(
    keyboardType: k,
    
    onFieldSubmitted: (val){
      value =val;
      Register1.registerLIst.add(val);
      FocusScope.of(context).requestFocus(nextFocusNode);
      print("onFieldSubmitted ");
      
    },
    focusNode:currentFocusNode,
    decoration: InputDecoration(
        contentPadding:
            new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        labelText: hintText),
    initialValue: initialValue,
  );
}

Widget textFieldPass({
  String hintText,
  String value,
  FocusNode currentFocusNode,
   FocusNode nextFocusNode,
  TextInputType k: TextInputType.text,
  icon: Icons.crop_square,
  String initialValue,
  BuildContext context,
  validators,
  
}) {
  return TextFormField(
    obscureText: true,
    focusNode: currentFocusNode,
   onFieldSubmitted: (val){
      value =val;
      
      FocusScope.of(context).requestFocus(nextFocusNode);
      print("onFieldSubmitted ");
    },
    keyboardType: k,
    decoration: InputDecoration(
        contentPadding:
            new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        labelText: hintText),
    initialValue: initialValue,
  );
}

Widget dynamicText(
  String dytext,{TextStyle st}
) {
  return Container(
    padding: EdgeInsets.only(left: 40, top: 40),
    alignment: Alignment.topLeft,
    child: Text(
      dytext,
      style:st
      // TextStyle(
      //   color: Colors.black,
      //   fontSize: 40,
      // ),
    ),
  );
}
