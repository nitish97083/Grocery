import 'package:flutter/material.dart';
import 'package:radhe_radhe/HomePage.dart';
import 'package:radhe_radhe/home/HomePageFront.dart';
import 'package:radhe_radhe/home/TopDrawer.dart';
import 'dart:ui' as ui;
import 'package:radhe_radhe/splash/splah.dart';
import 'package:radhe_radhe/utils/rough.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home:
     // TopDrawers(),
      NewHomePageDart(),
      //change s
      //large changes
     // home :MyDocument()
    );
  }
}
