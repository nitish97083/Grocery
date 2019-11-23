import 'package:flutter/material.dart';

class NewHomePageDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewHomePageDart();
  }
}

class _NewHomePageDart extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffDDDDDD),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 30,
                        left: 20,
                        child: InkWell(
                          child: Container(
                            //margin: EdgeInsets.only(left: 20, top: 20),
                            child: Image.asset(
                              'assets/icons_new/menu.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                          onTap: () {
                            // there will be hamburger menu
                          },
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: MediaQuery.of(context).size.width / 1.3,
                        child: InkWell(
                          child: Container(
                            // margin: EdgeInsets.only(left: 20, top: 20),
                            child: Image.asset(
                              'assets/icons_new/cart.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                          onTap: () {
                            // there will be hamburger menu
                          },
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: MediaQuery.of(context).size.width / 1.15,
                        child: InkWell(
                          child: Container(
                            // margin: EdgeInsets.only(left: 20, top: 20),
                            child: Image.asset(
                              'assets/icons_new/notification.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                          onTap: () {
                            // there will be hamburger menu
                          },
                        ),
                      )
                      /**/
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  //color: Colors.black,
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 13,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: TextField(
                          //controller: passwdController,
                          decoration: InputDecoration(
                            hintText: "What are you looking for?",
                            hintStyle: TextStyle(color: Color(0xff8898AA)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff172B4D)),

//                          borderRadius: BorderRadius.circular(25.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 15,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff172B4D)),

//                          borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: MediaQuery.of(context).size.width / 1.25,
                        child: Image.asset('assets/icons_new/search_icon.png'),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 5),
                  height: MediaQuery.of(context).size.height / 29,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Color(0xff172B4D),
                        fontFamily: 'SF Pro Display',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
