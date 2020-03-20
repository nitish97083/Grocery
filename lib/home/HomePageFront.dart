import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:radhe_radhe/AppBarCustomWidth.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';
import 'package:radhe_radhe/home/AddButtonOfCart.dart';
import 'package:radhe_radhe/home/TopProductContainer.dart';
import '../single_item_view.dart';
import 'CustomProperties.dart';
import 'pojo/post.dart';

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

var count = 0;

class NewHomePageDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewHomePageDart();
  }
}

class _NewHomePageDart extends State {
  ScrollController _scrollController;
  bool lastStatus = true;

  // _scrollListener() {
  //   if (isShrink != lastStatus) {
  //     setState(() {
  //       lastStatus = isShrink;
  //     });
  //   }
  // }

  // bool get isShrink {
  //   return _scrollController.hasClients &&
  //       _scrollController.offset > (60 - kToolbarHeight);
  // }

  @override
  void initState() {
    // _scrollController = ScrollController();
    // _scrollController.addListener(_scrollListener);
    super.initState();
  }

  // @override
  // void dispose() {
  //   _scrollController.removeListener(_scrollListener);
  //   super.dispose();
  // }
GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var www = MediaQuery.of(context).size.width;

   
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
          backgroundColor: Color(0xffDDDDDD),
          appBar: AppbarCustomWidth(_scaffoldKey),
          drawer:SideMenuDrawer(),
          body: SingleChildScrollView(
            child: Container(
          // height: MediaQuery.of(context).size.height/1,
            //  controller: _scrollController,
            //  headerSliverBuilder: (context, bool ibs) => [
               child: 
               Column(
                 children: <Widget>[
                  //  SliverAppBar(
                  //     backgroundColor: Colors.transparent,
                  //     expandedHeight: 40,
                  //     floating: false,
                  //     pinned: true,
                  //     flexibleSpace: Container(
                  //       color: Color(0xffDDDDDD),
                  //       padding: EdgeInsets.only(top: 10),
                  //       width: MediaQuery.of(context).size.width,
                  //       height: MediaQuery.of(context).size.height / 10,
                  //       child: Stack(
                  //         children: <Widget>[
                  //           Positioned(
                  //             top: 30,
                  //             left: 20,
                  //             child: InkWell(
                  //               child: Container(
                  //                 //margin: EdgeInsets.only(left: 20, top: 20),
                  //                 child: Image.asset(
                  //                   'assets/icons_new/menu.png',
                  //                   width: 25,
                  //                   height: 25,
                  //                 ),
                  //               ),
                  //               onTap: () {
                  //                 // there will be hamburger menu
                  //                 print("drawer icon");
                  //               },
                  //             ),
                  //           ),
                  //           Positioned(
                  //             top: 30,
                  //             left: MediaQuery.of(context).size.width / 1.3,
                  //             child: InkWell(
                  //               child: Container(
                  //                 // margin: EdgeInsets.only(left: 20, top: 20),
                  //                 child: Image.asset(
                  //                   'assets/icons_new/cart.png',
                  //                   width: 25,
                  //                   height: 25,
                  //                 ),
                  //               ),
                  //               onTap: () {
                  //                 // there will be hamburger menu
                  //               },
                  //             ),
                  //           ),
                  //           Positioned(
                  //             top: 30,
                  //             left: MediaQuery.of(context).size.width / 1.15,
                  //             child: InkWell(
                  //               child: Container(
                  //                 // margin: EdgeInsets.only(left: 20, top: 20),
                  //                 child: Image.asset(
                  //                   'assets/icons_new/notification.png',
                  //                   width: 25,
                  //                   height: 25,
                  //                 ),
                  //               ),
                  //               onTap: () {
                  //                 // there will be hamburger menu
                  //               },
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
            //  ],
               Container(
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
                              // what are looking for search box

//                               Container(
//                                 margin: EdgeInsets.only(top: 0),
//                                 //color: Colors.black,
//                                 width: MediaQuery.of(context).size.width / 1.1,
//                                 height: MediaQuery.of(context).size.height / 13,
//                                 child: Stack(
//                                   children: <Widget>[
//                                     Positioned(
//                                       child: TextField(
//                                         //controller: passwdController,
//                                         decoration: InputDecoration(
//                                           hintText: "What are you looking for?",
//                                           hintStyle:
//                                               TextStyle(color: Color(0xff8898AA)),
//                                           border: OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                                 color: Color(0xff172B4D)),

// //                          borderRadius: BorderRadius.circular(25.0),
//                                           ),
//                                           contentPadding: EdgeInsets.symmetric(
//                                             vertical: 15,
//                                             horizontal: 15,
//                                           ),
//                                           focusedBorder: OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                                 color: Color(0xff172B4D)),

// //                          borderRadius: BorderRadius.circular(25.0),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       top: 10,
//                                       left: MediaQuery.of(context).size.width /
//                                           1.25,
//                                       child: Image.asset(
//                                           'assets/icons_new/search_icon.png'),
//                                     )
//                                   ],
//                                 ),
//                               ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 5),
                                height: MediaQuery.of(context).size.height / 29,
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Categories",
                                  style: TextStyle(
                                      color: Color(0xff172B4D),
                                      fontFamily: CustomFont.categoryFont,
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


                              // ****************from topProducthere************************************//
                              TopProductContainer(topProducts)
//                               Container(
//                                   /*ListView.builder(
//                               itemCount: list.length,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) =>
//                                   buildBody(context, index, list))),*/
//                                   //height: 1000,
//                                   child: GridView.count(
//                                 shrinkWrap: true,
//                                 physics: BouncingScrollPhysics(),
//                                 // Create a grid with 2 columns. If you change the scrollDirection to
//                                 // horizontal, this produces 2 rows.
//                                 crossAxisCount: 2,
//                                 childAspectRatio: 0.7,

//                                 // Generate 100 widgets that display their index in the List.
//                                 children:
//                                     List.generate(topProducts.length, (index) {
//                                   return Padding(
//                                     padding: EdgeInsets.all(10),
//                                     // height: MediaQuery.of(context).size.width/5,
//                                     // width: MediaQuery.of(context).size.width/5,
//                                     // color: Colors.red,
//                                     child: InkWell(
//                                       //item card started here grid view
//                                       child: Material(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(12),
//                                           ),
//                                           color: Color(0xff2A363B),
//                                           elevation: 2,
//                                           child: Column(
//                                             children: <Widget>[
//                                               Container(
//                                                   height: www / 2.5,
//                                                   width: www / 2,
//                                                   child: Material(
//                                                       shape:
//                                                           RoundedRectangleBorder(
//                                                         borderRadius:
//                                                             BorderRadius.circular(
//                                                                 12),
//                                                       ),
//                                                       color: Color(0xff2A993B),
//                                                       elevation: 2,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                             image:
//                                                                 DecorationImage(
//                                                               fit: BoxFit.cover,
//                                                               image: NetworkImage(
//                                                                 topProducts[index]
//                                                                     .imageUrl,
//                                                               ),
//                                                             ),
//                                                             borderRadius:
//                                                                 BorderRadius.only(
//                                                                     topLeft: Radius
//                                                                         .circular(
//                                                                             10),
//                                                                     topRight: Radius
//                                                                         .circular(
//                                                                             10))),
//                                                       ))),
//                                               Stack(
//                                                 children: <Widget>[
//                                                   Positioned(
//                                                     child: Container(
//                                                       height: www / 3.8,
//                                                       // color: Colors.blueAccent,
//                                                       child: Align(
//                                                         alignment: Alignment
//                                                             .bottomCenter,
//                                                         child: Container(
//                                                           // color: Colors.yellow,
//                                                           child: Column(
//                                                             children: <Widget>[
//                                                               SizedBox(
//                                                                 height: 3,
//                                                               ),
//                                                               Text(
//                                                                 topProducts[index]
//                                                                     .nameInEng,
//                                                                 maxLines: 1,
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style: TextStyle(
//                                                                   color: Colors
//                                                                       .white,
//                                                                   fontSize: 17,
//                                                                 ),
//                                                               ),
//                                                               Text(
//                                                                 topProducts[index]
//                                                                     .nameInHin,
//                                                                 maxLines: 1,
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style: TextStyle(
//                                                                     color: Colors
//                                                                         .white,
//                                                                     fontSize: 17),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     top: www / 5,
//                                                     child: Align(
//                                                       alignment:
//                                                           Alignment.bottomCenter,
//                                                       child: Row(
//                                                         children: <Widget>[
//                                                           Container(
//                                                             margin:
//                                                                 EdgeInsets.only(
//                                                                     left: 10),
//                                                             child: Text(
//                                                               topProducts[index]
//                                                                       .mrp +
//                                                                   " ₹",
//                                                               style: TextStyle(
//                                                                   decoration:
//                                                                       TextDecoration
//                                                                           .lineThrough,
//                                                                   fontSize: 14,
//                                                                   color: Colors
//                                                                       .white),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             color: Colors.green,
//                                                             alignment: Alignment
//                                                                 .bottomLeft,
//                                                             margin:
//                                                                 EdgeInsets.only(
//                                                                     left: 10),
//                                                             child: Text(
//                                                               topProducts[index]
//                                                                       .price +
//                                                                   " ₹",
//                                                               style: TextStyle(
//                                                                   fontSize: 14,
//                                                                   decoration:
//                                                                       TextDecoration
//                                                                           .none,
//                                                                   color: Colors
//                                                                       .white),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     top: www / 5.6,
//                                                     left: www / 4.2,
//                                                     child: Addbutton(index,
//                                                         topProducts), /*RaisedButton(
// ),
//                                               child: Text("add"),
//                                               onPressed: () {},
//                                               color: Colors.white,
//                                               textColor: Colors.black,
//                                               splashColor: Colors.blueAccent,
//                                             ),*/
//                                                   )
//                                                 ],
//                                               )
//                                             ],
//                                           )),
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) => ItemView(
//                                                     index, topProducts)));
//                                       },
//                                     ),
//                                   );
//                                 }),
//                               ))
                            ],
                          );
                        } else {
                          return Center(
                              child: Container(
                            height: www / 2,
                            width: www / 2,
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
                ),
              ),
              ],
            ),
                 
      ),
          ),
    ));
  }
}

/*tapedButton(int productId, String price, String mrp, String nameInHin,
    String nameInEng, String imageUrl, int categoryId, int clicked) {
  //SharedPreferences prefs = await SharedPreferences.getInstance();
  CartValue saveCart = CartValue();
  saveCart.productId = productId;
  saveCart.price = price;
  saveCart.mrp = mrp;
  saveCart.nameInHin;
  saveCart.nameInEng;
  saveCart.imageUrl;

  saveCart.categoryId = categoryId;
  SharedPref sharedPref = new SharedPref();
  List<CartValue> getF = sharedPref.retrive() as List<CartValue>;
  getF.add(saveCart);
  sharedPref.save(getF);

  //prefs.setString("cart", jsonEncode(saveCart));
  //cartValue.toJson();
  //value.insert(productId, new CartValue());
}*/

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

Widget cartAddButton(
    BuildContext context, int index, List<TopProducts> topProducts) {
  int _counter;
  bool value = true;

  //setState(() {});

  /*setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });*/
  return count == 0
      ? Container(
          width: 80,
          height: 28,
          child: InkWell(
            child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Color(0xffffffff),
                elevation: 2,
                child: Center(
                  child: Text("Add"),
                )),
            onTap: () {},
          ))
      : Container(
          width: 80,
          height: 28,
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Color(0xffffffff),
            elevation: 2,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                      child: Icon(
                        Icons.remove,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                      onTap: () {})
                ],
              ),
            ),
          ),
        );
}

//   tapedButton(
//                           topProducts[index].productId,
//                           topProducts[index].price,
//                           topProducts[index].mrp,
//                           topProducts[index].nameInHin,
//                           topProducts[index].nameInEng,
//                           topProducts[index].imageUrl,
//                           topProducts[index].categoryId,
//                           2);*/ /*
//                     },
//                   ),
//                   Text(
//                     "0",
//                     style: TextStyle(color: Colors.pink, fontSize: 18),
//                   ),
//                   Icon(
//                     Icons.add,
//                     color: Colors.pink,
//                     size: 24.0,
//                   ),
//                 ],
//               ),
//             )));;
//   //SharedPreferences prefs =
//   //SharedPreferences.getInstance() as SharedPreferences;
//   /* SharedPref sharedPref = SharedPref();
//   List<CartValue> getValue = sharedPref.retrive() as List<CartValue>;
//   Fluttertoast.showToast(
//       msg: "jhkjh",
//       toastLength: Toast.LENGTH_SHORT,
//       timeInSecForIos: 1,
//       fontSize: 16,
//       gravity: ToastGravity.CENTER,
//       backgroundColor: Colors.blueAccent,
//       textColor: Colors.black);*/
//   /*if (getValue.length == 0) {
//     return Container(
//         width: 80,
//         height: 28,
//         child: InkWell(
//           child: Material(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               color: Color(0xffffffff),
//               elevation: 2,
//               child: Center(
//                 child: Text("Add"),
//               )),
//           onTap: () {
//             */ /* tapedButton(
//                 topProducts[index].productId,
//                 topProducts[index].price,
//                 topProducts[index].mrp,
//                 topProducts[index].nameInHin,
//                 topProducts[index].nameInEng,
//                 topProducts[index].imageUrl,
//                 topProducts[index].categoryId,
//                 2);*/ /*
//           },
//         ));
//   } else {
//     return Container(
//         width: 80,
//         height: 28,
//         child: Material(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             color: Color(0xffffffff),
//             elevation: 2,
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   InkWell(
//                     child: Icon(
//                       Icons.remove,
//                       color: Colors.pink,
//                       size: 24.0,
//                     ),
//                     onTap: () {
//                       */ /*tapedButton(
//                           topProducts[index].productId,
//                           topProducts[index].price,
//                           topProducts[index].mrp,
//                           topProducts[index].nameInHin,
//                           topProducts[index].nameInEng,
//                           topProducts[index].imageUrl,
//                           topProducts[index].categoryId,
//                           2);*/ /*
//                     },
//                   ),
//                   Text(
//                     "0",
//                     style: TextStyle(color: Colors.pink, fontSize: 18),
//                   ),
//                   Icon(
//                     Icons.add,
//                     color: Colors.pink,
//                     size: 24.0,
//                   ),
//                 ],
//               ),
//             )));

// }
//    }