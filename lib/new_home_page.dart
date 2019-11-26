import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  var response = await http
      .get("https://onlinekiranabazar.000webhostapp.com/api/getCategories");
  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

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
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 2.1,
                    child: FutureBuilder<Post>(
                      future: fetchPost(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Data> list = snapshot.data.data;
                          return ListView.builder(
                              itemCount: list.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildBody(context, index, list));
                        }
                      },
                    )
                    /*  itemCount: snapshot.data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index) =>buildBody(context,index),
                        );*/
                    /*ListView.builder(
                        itemCount: litems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext ctxt, int index) =>
                            buildBody(ctxt, index))*/

                    /*ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 160.0,
                        color: Colors.red,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.green,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                    ],
                  ),*/
                    )
              ],
            ),
          )),
    );
  }
}

Widget buildBody(BuildContext ctxt, int index, List<Data> data) {
  return Container(
    width: MediaQuery.of(ctxt).size.width / 2.5,
    height: MediaQuery.of(ctxt).size.width / 2.5,
    child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        elevation: 3,
        child: Stack(
          children: <Widget>[
            Positioned(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.network(
                      data[index].cateIconUrl,
                      width: MediaQuery.of(ctxt).size.width / 2.5,
                      height: MediaQuery.of(ctxt).size.width / 2.5,
                      fit: BoxFit.cover,
                    ))
                /* Image.network(
                data[index].cateIconUrl,
                width: MediaQuery.of(ctxt).size.width / 3.5,
                height: MediaQuery.of(ctxt).size.width / 2.5,
                fit: BoxFit.fill,
              ),*/
                ),
            Positioned(
              left:-4,
                top: MediaQuery.of(ctxt).size.width / 3.45,
                child: Card(
                  color: Color(0xffB5ffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Container(

                      width: MediaQuery.of(ctxt).size.width / 2.6,
                      height: MediaQuery.of(ctxt).size.width / 8,
                  child: Text(data[index].nameInEng+"               "+data[index].nameInHin),),
                ))
          ],
        )),
  );
}

class Post {
  bool success;
  List<Data> data;
  String message;

  Post({this.success, this.data, this.message});

  Post.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int cateId;
  String nameInEng;
  String nameInHin;
  String details;
  String cateIconUrl;

  Data(
      {this.cateId,
      this.nameInEng,
      this.nameInHin,
      this.details,
      this.cateIconUrl});

  Data.fromJson(Map<String, dynamic> json) {
    cateId = json['cate_id'];
    nameInEng = json['name_in_eng'];
    nameInHin = json['name_in_hin'];
    details = json['details'];
    cateIconUrl = json['cate_icon_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cate_id'] = this.cateId;
    data['name_in_eng'] = this.nameInEng;
    data['name_in_hin'] = this.nameInHin;
    data['details'] = this.details;
    data['cate_icon_url'] = this.cateIconUrl;
    return data;
  }
}
