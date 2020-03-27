import 'package:flutter/material.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';
import 'package:radhe_radhe/home/CustomProperties.dart';
import 'package:radhe_radhe/home/HomePageFront.dart';
import 'package:radhe_radhe/home/pojo/cartValue.dart';

import 'package:radhe_radhe/home/pojo/post.dart';

class CatItemDetail extends StatefulWidget {
  CatItemDetail(this.index, this.category);
  final index;
  final List<Categories> category;
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CatItemDetail();
  }
}

class _CatItemDetail extends State<CatItemDetail> {
  @override
  Widget build(BuildContext context) {
    String ss = " ";
    // if (widget.category[widget.index].description != null) {
    //   ss = widget.category[widget.index].description;
    // }
    var withd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColors,
        actions: <Widget>[
          customCart(context),
        ],
      ),
      drawer: SideMenuDrawer(),
        bottomSheet: Container(
          child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                width: withd,
                height: withd / 6,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
             
              Material(
                child: Image.network(
                  widget.category[widget.index].cateIconUrl,
                  width: withd,
                  height: withd,
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.category[widget.index].nameInEng,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              widget.category[widget.index].nameInHin,
                              style: TextStyle(fontSize: 22)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: withd / 1.2,
                      top: withd / 29,
                      child: Column(
                        children: <Widget>[
                          //**************************  MRP is Not There */
                          // Container(
                          //   color: Colors.green,
                          //   child: Text(
                          //     widget.category[widget.index].mrp + " ₹",
                          //     style: TextStyle(
                          //         decoration: TextDecoration.lineThrough,
                          //         fontSize: 18,
                          //         color: Colors.white),
                          //   ),
                          // ),
                          // Container(
                          //   child: Text(
                          //     widget.category[widget.index].price + " ₹",
                          //     style: TextStyle(fontSize: 18),
                          //   ),
                          // ),
                        ],
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  ss,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              // Container(
              //   width: withd,
              //   height: withd,
              //   padding: EdgeInsets.all(10),
              // ),
            ],
          ),
        ));
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
