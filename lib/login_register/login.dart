import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:radhe_radhe/HomePage.dart';
import 'package:radhe_radhe/login_register/register.dart';
import 'package:shimmer/shimmer.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  final myControllerUsername = TextEditingController();
  final passwdController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    myControllerUsername.dispose();
    passwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/login/login.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, top: 40),
              alignment: Alignment.topLeft,
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: myControllerUsername,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 15,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ),
//                          borderRadius: BorderRadius.circular(25.0),
                          ),
                          labelText: "Username"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: passwdController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 15,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),

//                          borderRadius: BorderRadius.circular(25.0),
                          ),
                          labelText: "Password"),
                    ),
                  ],
                )
                /*Form(
                child: Column(
                  //padding: const EdgeInsets.symmetric(vertical: 16.0),
                  children: <Widget>[
                    TextFormField(

                      decoration: InputDecoration(

                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.green, ),
//                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: "USERNAME",

                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.green, ),
//                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: "PASSWORD",
                      ),
                    ),
                  ],
                ),
              ),*/
                ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
//              padding: EdgeInsets.only(left: 30,top: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 11,
              child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: Color(0xffe84a5f),
                  child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 60),
                            child: Center(
                              child: Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            )),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 200),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      getInputValue(
                          myControllerUsername.text, passwdController.text);
                    },
                  )

                  /* Row(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(left: 60),
                          child: Center(
                            child: Text("Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 200),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),*/
                  ),
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.only(top: 3, left: 25),
                height: MediaQuery.of(context).size.height / 39,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Alternative Login Method",
                  style: TextStyle(fontSize: 18),
                )),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(top: 3, left: 25),
              height: MediaQuery.of(context).size.height / 19,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                      width: 35,
                      height: 35,
                      child: Image.asset("assets/login/google.png")),
                  Container(
                      width: 35,
                      height: 25,
                      child: Image.asset("assets/login/facebook.png")),
                  /* BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/login/login.png'),
                            fit: BoxFit.fill)),*/
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Text("Don't have an account "),
                    InkWell(
                      child: Text(
                        "Register here ",
                        style: TextStyle(
                            color: Color(0xffe84a5f),
                            decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        navigateToRegister(context);
                      },
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }

  void getInputValue(String username, String password) {
    Future<Post> fetchPost() async {
      final response = await http.post(
          'https://onlinekiranabazar.000webhostapp.com/api/login?phone=' +
              username +
              '&password=' +
              password);

      if (response.statusCode == 200) {
        naviagteTOLogin(context);
        // If the call to the server was successful, parse the JSON.
        return Post.fromJson(json.decode(response.body));
      } else {
        Fluttertoast.showToast(
            msg: " khsdkjhfks",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        // If that call was not successful, throw an error.
        throw Exception('Failed to load post');
      }
    }
  }
}

Future naviagteTOLogin(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
}

Future navigateToRegister(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
}

class Post {
  String success;
  List<String> data;
  String message;

  Post({this.success, this.data, this.message});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        success: json['Success'], data: json['data'], message: json['message']);
  }
}
