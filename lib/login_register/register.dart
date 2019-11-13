import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radhe_radhe/login_register/login.dart';
import 'package:radhe_radhe/utils/StaticFormField.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Register();
  }
}

class _Register extends State<Register> {
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();
  String name;
  String email;
  String phone;
  String password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:Container(
        child: Image.asset('assets/login/register.png')),
      body: Container(
        alignment: Alignment.bottomLeft,
        /*decoration: BoxDecoration(

              image: DecorationImage(
                  image: AssetImage('assets/login/register.png'),

                  fit: BoxFit.none)),*/
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 50, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff2a363b),
                  ),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Login());
                    Navigator.pushReplacement(context, route);
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Registration",
                  style: TextStyle(color: Color(0xff2a363b), fontSize: 40),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 40),
                margin: EdgeInsets.only(top: 20),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      textFieldText(
                          hintText: "name".toUpperCase(),
                          currentFocusNode: f1,
                          nextFocusNode: f2,
                          value: name,
                          context: context),
                      SizedBox(height: 10),
                      textFieldText(
                          hintText: "email".toUpperCase(),
                          currentFocusNode: f2,
                          nextFocusNode: f3,
                          value: email,
                          context: context),
                      SizedBox(height: 10),
                      textFieldText(
                          hintText: "phone".toUpperCase(),
                          k: TextInputType.phone,
                          currentFocusNode: f3,
                          context: context,
                          nextFocusNode: f4,
                          value: phone),
                      SizedBox(height: 10),
                      textFieldPass(
                          hintText: "password".toUpperCase(),
                          k: TextInputType.text,
                          context: context,
                          currentFocusNode: f4,
                          nextFocusNode: f5,
                          value: password),
                      SizedBox(height: 10),
                      textFieldPass(
                          hintText: "confirm password".toUpperCase(),
                          k: TextInputType.text,
                          context: context,
                          currentFocusNode: f5),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              // Container(
              //   child: Row(
              //     children: <Widget>[
              //       Container(child: Image.asset('assets/login/google.png')),
              //       Container(child: Image.asset('assets/login/.png')),
              //       Container(child: Image.asset('assets/login/google.png')),

              //     ],
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(right: 40, top: 50),
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
                              padding: EdgeInsets.only(left: 30),
                              child: Center(
                                child: Text("Register",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                              )),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 150),
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
                      onPressed: () {},
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
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Text("Already have an account   "),
                    InkWell(
                      child: Text(
                        "Login here ",
                        style: TextStyle(
                            color: Color(0xffe84a5f),
                            decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => Login());
                        Navigator.pushReplacement(context, route);
                      },
                    )
                  ],
                ),
              ),
              Container(
               height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
