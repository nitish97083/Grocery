import 'package:flutter/material.dart';
import 'package:radhe_radhe/HomePage.dart';
import 'dart:ui' as ui;
import 'package:radhe_radhe/splash/splah.dart';
import 'package:radhe_radhe/utils/rough.dart';

import 'home/new_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home:NewHomePageDart(),
      //change s
      //large changes
     // home :MyDocument()
    );
  }
}
