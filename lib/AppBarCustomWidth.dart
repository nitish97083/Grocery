import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';

String t;
String z;
 TextStyle style = TextStyle(color: Colors.white,fontSize: 15);
class AppbarCustomWidth extends StatefulWidget with PreferredSizeWidget {
  // AppbarCustomWidth(String title,String i)

  @override
  _AppbarCustomWidthState createState() => _AppbarCustomWidthState();

  @override
  Size get preferredSize => Size.fromHeight(140.0);
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
                  top: MediaQuery.of(context).size.height /15, left: 10),
              child: Column(
                children: <Widget>[
                  Container(

                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 12),
                          child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 35,
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 12),
                         
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("delivery location",style: style,),
                              InkWell(
                                child: Container(
                                    child: Row(
                                  children: <Widget>[
                                   Text("Kestopur Kolkata",style: style,),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            print("Edit deliver Address");
                                          }),
                                    ),
                                  ],
                                )),
                                onTap: (){
                                  print("Location Set");
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                                left: MediaQuery.of(context).size.width / 4.5),
                            child: IconButton(
                                icon: Icon(Icons.shopping_cart,size: 35,color: Colors.white,),
                                onPressed: null))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text("Categories"),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.55,
                            height: MediaQuery.of(context).size.height / 22,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(3)),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  child: Icon(Icons.search),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          15),
                                  child: Text("Search for products"),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
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
