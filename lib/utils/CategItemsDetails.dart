import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';
import 'package:radhe_radhe/home/AddButtonOfCart.dart';
import 'package:radhe_radhe/home/CategoriesProductDetails.dart';
import 'package:radhe_radhe/home/CustomProperties.dart';
import 'package:radhe_radhe/home/HomePageFront.dart';

import 'package:radhe_radhe/home/SearchForProduct.dart';
import 'package:radhe_radhe/home/SrchItemsDetails.dart';
import 'package:radhe_radhe/home/pojo/CategoryProductPojo.dart';

import 'package:radhe_radhe/home/pojo/post.dart';
import 'package:radhe_radhe/single_item_view.dart';

class CatItemDetail extends StatefulWidget {
  CatItemDetail( this.category);
  final Categories category;
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CatItemDetail();
  }
}
Future<List<CateryProduct1>> categoryList;
 Future<List<CateryProduct1>> categoryListProductName(categoryId) async {
   print("object $categoryId");
  final response = await http.get(
      'https://onlinekiranabazar.000webhostapp.com/api/get-category/$categoryId');
  //print(response.body.toString());
   print("object2");
  if (response.statusCode == 200) {
    CatergoryProductPojo categoryList = new CatergoryProductPojo();
    categoryList = CatergoryProductPojo.fromJson(json.decode(response.body));
    List<CateryProduct1> data = categoryList.data;
    for (CateryProduct1  d in data) {
      print('Product found${d.nameInEng}');
    }
  
    return data;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class _CatItemDetail extends State<CatItemDetail> {

var catId;
 
  @override
  void initState() {
    
    super.initState();
   catId =  widget.category.cateId;
   print(catId);
  }
 
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
        body: SingleChildScrollView(
          child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              FutureBuilder<dynamic>(
                  future:categoryListProductName(catId),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<CateryProduct1> items = snapshot.data;
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 15,bottom: 10),
                              height: MediaQuery.of(context).size.height / 29,
                              width: MediaQuery.of(context).size.width,
                              child:
                              // Container(
                              //   height: 50,
                              //   padding: EdgeInsets.only(top:50),
                              //   child: Text("Currently Items is Unavailable Please Select From Top Product",maxLines: 2,textAlign:TextAlign.center,),
                              // )
                              Text(
                                "Found ${items.length} Item",
                                style: TextStyle(
                                    color: Color(0xff172B4D),
                                    fontFamily: 'SF Pro Display',
                                    fontSize:18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                         buildItem(context, items),
                          ],
                        ),
                      );
                    } else {
                          return Center(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              child: CupertinoActivityIndicator(
                                animating: true,
                                radius: 25,
                              ),
                            ),
                          ));
                        }
                  })
            ],
          )),

            
              
          ),
        );
  }
}

Widget buildItem(context,  items) {
  return Container(
      child: GridView.count(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          childAspectRatio: 0.7,

          // Generate 100 widgets that display their index in the List.
          children: List.generate(items.length, (index) {
            return Padding(
                padding: EdgeInsets.all(10),
                child: buildSrchItemDetails(context, items, index));
          })));
}

Widget buildSrchItemDetails(context, List<CateryProduct1> items, index) {
  var www = MediaQuery.of(context).size.width;
  return InkWell(
    //item card started here grid view

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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Color(0xff2A993B),
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              items[index].imageUrl,
                            ),
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                    ))),
            Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: www / 3.8,
                    // color: Colors.blueAccent,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        // color: Colors.yellow,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              items[index].nameInEng,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              items[index].nameInHin,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
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
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            items[index].mrp + " ₹",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          color: Colors.green,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            items[index].price + " ₹",
                            style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: www / 5.6,
                  left: www / 4.2,
                  child:
                      Addbutton(), 
                )
              ],
            )
          ],
        )),
    onTap: () {
     
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CategoryProductDetail(index,items)));
    },
  );
}
