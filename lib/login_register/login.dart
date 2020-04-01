import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:radhe_radhe/home/HomePageFront.dart';

import 'package:radhe_radhe/login_register/register.dart';

//import 'package:radhe_radhe/login_register/registerome_page.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

//String url = "http://dummy.restapiexample.com/api/v1/employees";

class _Login extends State<Login> {
  final myControllerUsername = TextEditingController();
  final passwdController = TextEditingController();

  //var data;
  String url = "https://onlinekiranabazar.000webhostapp.com/api/login";

  Future singIn(String username, String password) async {
    Map data = {'phone': username, 'password': password};

    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      if (response.body != null) {
        var data = jsonDecode(response.body);
        var success = data['success'];
        var message = data['message'];
        if (success) {
          naviagteTOLogin(context);
        }
        Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT);
      }
      Fluttertoast.showToast(
          msg: response.body,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: 'something went wrong',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  void dispose() {
    myControllerUsername.dispose();
    passwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                          labelText: "password"),
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
                      keyboardType: TextInputType.visiblepassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.green, ),
//                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        labelText: "password",
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
                      var emaiee = myControllerUsername.text;
                      singIn(myControllerUsername.text, passwdController.text);
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(emaiee);
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

/*void getInputValue(String username, String password) {
    var data;
    String url =
        'https://onlinekiranabazar.000webhostapp.com/api/login?phone=' +
            username +
            '&password=' +
            password;
    Future<String> getDat() async {
      http.Response response = await http
          .post(Uri.encodeFull(url), headers: {'Accept': 'application/json'});
      this.setState(() {
        if (response != null) {
          if (response.body != null) {
            data = jsonDecode(response.body);
          }
        }
      });
      data.forEach((v) {
        print(v['success'] );
        Fluttertoast.showToast(
            msg: v['success'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      });

      return 'success';
    }
    */ /*Future<Post> fetchPost() async {
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
    }*/ /*
  }*/
}

Future naviagteTOLogin(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => NewHomePageDart()));
}

Future navigateToRegister(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
}
