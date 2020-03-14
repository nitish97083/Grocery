import 'package:flutter/material.dart';

class TopDrawers extends StatefulWidget {
  @override
  _TopDrawersState createState() => _TopDrawersState();
}

class _TopDrawersState extends State<TopDrawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: Drawer(),
     appBar: AppBar(),
    );
  }
}
