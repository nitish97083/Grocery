import 'package:flutter/material.dart';

class SwitchedAddress extends StatefulWidget {
  @override
  _SwitchedAddressState createState() => _SwitchedAddressState();
}

bool isSwitched = false;

class _SwitchedAddressState extends State<SwitchedAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:10,left: MediaQuery.of(context).size.width/30),
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeTrackColor: Colors.lightGreenAccent,
        activeColor: Colors.green,
      ),
    );
  }
}
