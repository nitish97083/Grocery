import 'package:flutter/material.dart';
import 'package:radhe_radhe/HomePage.dart';
import 'package:radhe_radhe/login_register/login.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Splash();
  }

}

class _Splash extends State<Splash> {
  bool loading = true;

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: loading?Text("data"):Login(),
      ),
    );
  }
}