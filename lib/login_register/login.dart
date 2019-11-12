import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radhe_radhe/HomePage.dart';
import 'package:shimmer/shimmer.dart';
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
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
              child: Form(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "USERNAME",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "PASSWORD",
                      ),
                    ),
                  ],
                ),
              ),
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
                  child:MaterialButton(
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
                              onPressed: (){},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    onPressed: (){
                      naviagteTOLogin(context);
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
            )
          ],
        ),
      )),
    );
  }
}
Future naviagteTOLogin(context) async{
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
}