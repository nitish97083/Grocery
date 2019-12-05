import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  var response = await http
      .get("https://onlinekiranabazar.000webhostapp.com/api/getCategories");
  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
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
    var www = MediaQuery.of(context).size.width;

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffDDDDDD),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xffDDDDDD),
                expandedHeight:80.0,
               // floating: false,
               //backgroundColor: Colors.transparent,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  child: Container(
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
                      ],
                    ),
                  ),
                )),
              ),
              SliverFillRemaining(
                  child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  FutureBuilder<Post>(
                    future: fetchPost(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        Data d = snapshot.data.data;
                        List<Categories> list = d.categories;
                        List<TopProducts> topProducts = d.topProducts;
                        /*Fluttertoast.showToast(
                    msg: d.toJson().toString(), gravity: ToastGravity.CENTER);*/
                        return Column(
                          children: <Widget>[
                            //here app bar
/*
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
                                    left:
                                        MediaQuery.of(context).size.width / 1.3,
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
                                    left: MediaQuery.of(context).size.width /
                                        1.15,
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
                                ],
                              ),
                            ),*/
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
                                        hintStyle:
                                            TextStyle(color: Color(0xff8898AA)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff172B4D)),

//                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 15,
                                          horizontal: 15,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff172B4D)),

//                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: MediaQuery.of(context).size.width /
                                        1.25,
                                    child: Image.asset(
                                        'assets/icons_new/search_icon.png'),
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
                                margin: EdgeInsets.only(top: 20, left: 10),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width / 2.1,
                                child: ListView.builder(
                                    itemCount: list.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        buildBody(context, index, list))),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              height: MediaQuery.of(context).size.height / 5.4,
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1529511582893-2d7e684dd128?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2090&q=80",
                                    //width: MediaQuery.of(context).size.width / 2.5,
                                    //height: MediaQuery.of(context).size.width / 2.5,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              height: MediaQuery.of(context).size.height / 29,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "Top Products",
                                style: TextStyle(
                                    color: Color(0xff172B4D),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                /*ListView.builder(
                            itemCount: list.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                buildBody(context, index, list))),*/
                                //height: 1000,
                                child: GridView.count(
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              // Create a grid with 2 columns. If you change the scrollDirection to
                              // horizontal, this produces 2 rows.
                              crossAxisCount: 2,
                              childAspectRatio: 0.7,

                              // Generate 100 widgets that display their index in the List.
                              children:
                                  List.generate(topProducts.length, (index) {
                                return Padding(
                                  padding: EdgeInsets.all(10),
                                  // height: MediaQuery.of(context).size.width/5,
                                  // width: MediaQuery.of(context).size.width/5,
                                  // color: Colors.red,
                                  child: Material(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      color: Color(0xff2A363B),
                                      elevation: 2,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              height: www / 2.5,
                                              width: www / 2,
                                              child: Material(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  color: Color(0xff2A993B),
                                                  elevation: 2,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage(
                                                            topProducts[index]
                                                                .imageUrl,
                                                          ),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10))),
                                                  ))),
                                          Stack(
                                            children: <Widget>[
                                              Positioned(
                                                child: Container(
                                                  height: www / 3.8,
                                                  // color: Colors.blueAccent,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                      // color: Colors.yellow,
                                                      child: Column(
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 3,
                                                          ),
                                                          Text(
                                                            topProducts[index]
                                                                .nameInEng,
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Text(
                                                            topProducts[index]
                                                                .nameInHin,
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: www / 5,
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10),
                                                        child: Text(
                                                          topProducts[index]
                                                                  .mrp +
                                                              " ₹",
                                                          style: TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                      Container(
                                                        color: Colors.green,
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        margin: EdgeInsets.only(
                                                            left: 10),
                                                        child: Text(
                                                          topProducts[index]
                                                                  .price +
                                                              " ₹",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  top: www / 5.6,
                                                  left: www / 4.2,
                                                  child: Visibility(
                                                    child: Container(
                                                        width: 80,
                                                        height: 28,
                                                        child: Material(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            color: Color(
                                                                0xffffffff),
                                                            elevation: 2,
                                                            child: Center(
                                                              child:
                                                                  Text("Add"),
                                                            ))),
                                                    visible: false,
                                                    replacement: Container(
                                                        width: 80,
                                                        height: 28,
                                                        child: Material(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            color: Color(
                                                                0xffffffff),
                                                            elevation: 2,
                                                            child: Center(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: <
                                                                    Widget>[
                                                                  Icon(
                                                                    Icons
                                                                        .remove,
                                                                    color: Colors
                                                                        .pink,
                                                                    size: 24.0,
                                                                  ),
                                                                  Text(
                                                                    "0",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .pink,
                                                                        fontSize:
                                                                            18),
                                                                  ),
                                                                  Icon(
                                                                    Icons.add,
                                                                    color: Colors
                                                                        .pink,
                                                                    size: 24.0,
                                                                  ),
                                                                ],
                                                              ),
                                                            ))),
                                                  ) /*RaisedButton(
),
                                            child: Text("add"),
                                            onPressed: () {},
                                            color: Colors.white,
                                            textColor: Colors.black,
                                            splashColor: Colors.blueAccent,
                                          ),*/
                                                  )
                                            ],
                                          )
                                        ],
                                      )),
                                );
                              }),
                            ))
                          ],
                        );
                      } else {
                        return Center(
                            child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: www,
                          child: Card(
                            child: CupertinoActivityIndicator(
                              animating: true,
                              radius: 25,
                            ),
                          ),
                        ));
                      }
                    },
                  )
                ],
              ))
            ],
          )),
    );
  }
}

Widget buildBody(BuildContext ctxt, int index, List<Categories> data) {
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
                    ))),
            Positioned(
                left: -4,
                top: MediaQuery.of(ctxt).size.width / 4,
                child: Card(
                  color: Color(0xffB5ffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(ctxt).size.width / 2.85,
                    height: MediaQuery.of(ctxt).size.width / 6,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            data[index].nameInEng,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        //SizedBox(height: 6,),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            data[index].nameInHin,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        )),
  );
}

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

class Post {
  bool success;
  Data data;
  String message;

  Post({this.success, this.data, this.message});

  Post.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  List<Categories> categories;
  List<TopProducts> topProducts;
  List<Recomanded> recomanded;
  List<Recent> recent;

  Data({this.categories, this.topProducts, this.recomanded, this.recent});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    if (json['topProducts'] != null) {
      topProducts = new List<TopProducts>();
      json['topProducts'].forEach((v) {
        topProducts.add(new TopProducts.fromJson(v));
      });
    }
    if (json['recomanded'] != null) {
      recomanded = new List<Recomanded>();
      json['recomanded'].forEach((v) {
        recomanded.add(new Recomanded.fromJson(v));
      });
    }
    if (json['recent'] != null) {
      recent = new List<Recent>();
      json['recent'].forEach((v) {
        recent.add(new Recent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.topProducts != null) {
      data['topProducts'] = this.topProducts.map((v) => v.toJson()).toList();
    }
    if (this.recomanded != null) {
      data['recomanded'] = this.recomanded.map((v) => v.toJson()).toList();
    }
    if (this.recent != null) {
      data['recent'] = this.recent.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int cateId;
  String nameInEng;
  String nameInHin;
  String details;
  String cateIconUrl;

  Categories(
      {this.cateId,
      this.nameInEng,
      this.nameInHin,
      this.details,
      this.cateIconUrl});

  Categories.fromJson(Map<String, dynamic> json) {
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

class TopProducts {
  int productId;
  String nameInEng;
  String nameInHin;
  String description;
  String imageUrl;
  int categoryId;
  int subCategoryId;
  String quantity;
  String brand;
  Null model;
  Null configuration;
  String mrp;
  String price;
  Null featured;
  int popularity;
  String createdAt;

  TopProducts(
      {this.productId,
      this.nameInEng,
      this.nameInHin,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.subCategoryId,
      this.quantity,
      this.brand,
      this.model,
      this.configuration,
      this.mrp,
      this.price,
      this.featured,
      this.popularity,
      this.createdAt});

  TopProducts.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    nameInEng = json['name_in_eng'];
    nameInHin = json['name_in_hin'];
    description = json['description'];
    imageUrl = json['image_url'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    quantity = json['quantity'];
    brand = json['brand'];
    model = json['model'];
    configuration = json['configuration'];
    mrp = json['mrp'];
    price = json['price'];
    featured = json['featured'];
    popularity = json['popularity'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['name_in_eng'] = this.nameInEng;
    data['name_in_hin'] = this.nameInHin;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['category_id'] = this.categoryId;
    data['sub_category_id'] = this.subCategoryId;
    data['quantity'] = this.quantity;
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['configuration'] = this.configuration;
    data['mrp'] = this.mrp;
    data['price'] = this.price;
    data['featured'] = this.featured;
    data['popularity'] = this.popularity;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Recomanded {
  int productId;
  String nameInEng;
  String nameInHin;
  String description;
  String imageUrl;
  int categoryId;
  int subCategoryId;
  String quantity;
  String brand;
  Null model;
  Null configuration;
  String mrp;
  String price;
  Null featured;
  int popularity;
  String createdAt;

  Recomanded(
      {this.productId,
      this.nameInEng,
      this.nameInHin,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.subCategoryId,
      this.quantity,
      this.brand,
      this.model,
      this.configuration,
      this.mrp,
      this.price,
      this.featured,
      this.popularity,
      this.createdAt});

  Recomanded.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    nameInEng = json['name_in_eng'];
    nameInHin = json['name_in_hin'];
    description = json['description'];
    imageUrl = json['image_url'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    quantity = json['quantity'];
    brand = json['brand'];
    model = json['model'];
    configuration = json['configuration'];
    mrp = json['mrp'];
    price = json['price'];
    featured = json['featured'];
    popularity = json['popularity'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['name_in_eng'] = this.nameInEng;
    data['name_in_hin'] = this.nameInHin;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['category_id'] = this.categoryId;
    data['sub_category_id'] = this.subCategoryId;
    data['quantity'] = this.quantity;
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['configuration'] = this.configuration;
    data['mrp'] = this.mrp;
    data['price'] = this.price;
    data['featured'] = this.featured;
    data['popularity'] = this.popularity;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Recent {
  int productId;
  String nameInEng;
  String nameInHin;
  String description;
  String imageUrl;
  int categoryId;
  int subCategoryId;
  String quantity;
  String brand;
  Null model;
  Null configuration;
  String mrp;
  String price;
  Null featured;
  int popularity;
  String createdAt;

  Recent(
      {this.productId,
      this.nameInEng,
      this.nameInHin,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.subCategoryId,
      this.quantity,
      this.brand,
      this.model,
      this.configuration,
      this.mrp,
      this.price,
      this.featured,
      this.popularity,
      this.createdAt});

  Recent.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    nameInEng = json['name_in_eng'];
    nameInHin = json['name_in_hin'];
    description = json['description'];
    imageUrl = json['image_url'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    quantity = json['quantity'];
    brand = json['brand'];
    model = json['model'];
    configuration = json['configuration'];
    mrp = json['mrp'];
    price = json['price'];
    featured = json['featured'];
    popularity = json['popularity'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['name_in_eng'] = this.nameInEng;
    data['name_in_hin'] = this.nameInHin;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['category_id'] = this.categoryId;
    data['sub_category_id'] = this.subCategoryId;
    data['quantity'] = this.quantity;
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['configuration'] = this.configuration;
    data['mrp'] = this.mrp;
    data['price'] = this.price;
    data['featured'] = this.featured;
    data['popularity'] = this.popularity;
    data['created_at'] = this.createdAt;
    return data;
  }
}
