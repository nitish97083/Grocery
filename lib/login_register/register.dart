import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radhe_radhe/login_register/login.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Register();
  }
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
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
                    Route route = MaterialPageRoute(builder: (context) => Login());
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

              child:   Form(

                child: Column(

                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "Name",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "Phone Number",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelText: "Confirm Password",
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),

              Container(
                margin: EdgeInsets.only( right: 40,top: 50),
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
                      onPressed: () {

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
                        Route route = MaterialPageRoute(builder: (context) => Login());
                        Navigator.pushReplacement(context, route);
                      },
                    )
                  ],
                ),
              ),
              Container(

                alignment: Alignment.bottomLeft,
                height: 200,
                width: MediaQuery.of(context).size.width,
                 //Image.asset('assets/login/register.png',width: MediaQuery.of(context).size.width,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
