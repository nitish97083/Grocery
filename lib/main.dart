import 'package:flutter/material.dart';
import 'package:radhe_radhe/HomePage.dart';
import 'package:radhe_radhe/new_home_page.dart';
import 'package:radhe_radhe/splash/splah.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:NewHomePageDart(),
      //change s
      //large changes
    );
  }
}
