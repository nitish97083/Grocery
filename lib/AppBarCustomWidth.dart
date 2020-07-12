import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';
import 'package:radhe_radhe/home/SearchForProduct.dart';

import 'home/CustomProperties.dart';

TextStyle style = TextStyle(color: CustomColors.secondaryColors, fontSize: 15);

class AppbarCustomWidth extends StatefulWidget with PreferredSizeWidget {
  GlobalKey<ScaffoldState> _scd = GlobalKey<ScaffoldState>();
  AppbarCustomWidth(this._scd);

  @override
  _AppbarCustomWidthState createState() => _AppbarCustomWidthState();

  @override
  Size get preferredSize => Size.fromHeight(130.0);
}

class _AppbarCustomWidthState extends State<AppbarCustomWidth> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(150),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black.withOpacity(0.25),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 15, left: 0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(),
                          child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: CustomColors.secondaryColors,
                                size: 30,
                              ),
                              onPressed: () {
                                widget._scd.currentState.openDrawer();
                                print(widget._scd.currentState);
                                print("Drawer menu Icon pressed");
                              }),
                        ),
                        //address section [Container]
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 50),
                          child: InkWell(
                            child: customAddressEditText(context),
                            onTap: () {
                              print("Edit Location");
                            },
                          ),
                        ),
                        customCart(context),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text("Categories"),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.46,
                            height: MediaQuery.of(context).size.height / 22,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(3)),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          30),
                                  child: Icon(Icons.search),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          20),
                                  child: Text("Search for products"),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchForProduct()));
                            print("object");
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
