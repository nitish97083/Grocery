import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/SrchItemsDetails.dart';
import 'package:radhe_radhe/home/pojo/SearchedItems.dart';
import 'AddButtonOfCart.dart';
import 'CustomProperties.dart';

class SearchForProduct extends StatefulWidget {
  @override
  _SearchForProductState createState() => _SearchForProductState();
}

String searchItem = "";
bool isSearched = false;
Future<List<Datum>> serchedProductList;
Future<List<Datum>> searchedProductName(productName) async {
  final response = await http.get(
      'https://onlinekiranabazar.000webhostapp.com/api/item-search/' +
          productName);
  print(response.body.toString());
  if (response.statusCode == 200) {
    SearchedProducts searchedProducts = new SearchedProducts();
    searchedProducts = SearchedProducts.fromJson(json.decode(response.body));
    List<Datum> data = searchedProducts.data;
    for (Datum d in data) {
      print(d.nameInEng);
    }

    return data;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

TextEditingController _controller = TextEditingController();
TextStyle style = TextStyle(color: CustomColors.tertiary);

class _SearchForProductState extends State<SearchForProduct> {
  // @override
  // void initState() {
  //   fetchSearchProduct();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    var www = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColors,
        actions: <Widget>[
          // IconButton(icon:Icon(Icons.arrow_back,color: CustomColors.secondaryColors,)
          // , onPressed:(){
          //   Navigator.pop(context);
          // }),

          Container(
            // color: Colors.white,

            width: MediaQuery.of(context).size.width / 1.5,
            child: TextField(
              controller: _controller,
              autocorrect: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: CustomColors.tertiary),
              decoration: InputDecoration(
                  hintText: "Insert Product Name",
                  hintStyle: style,
                  disabledBorder: InputBorder.none),
              // initialValue: searchedProductName,
              onSubmitted: (val) {
                
                   setState(() {
                      searchItem = val;
                  isSearched = true;

                   });
                
                  //serchedProductList = searchedProductName(val);
              },
            ),
          ),

          customCart(context)
        ],
      ),
      body: Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              FutureBuilder<dynamic>(
                  future:isSearched==true?searchedProductName(searchItem):null,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Datum> items = snapshot.data;
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              height: MediaQuery.of(context).size.height / 29,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "Found ${items.length} Item",
                                style: TextStyle(
                                    color: Color(0xff172B4D),
                                    fontFamily: 'SF Pro Display',
                                    fontSize:18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            buildItem(context, items)
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
    );
  }
}

//  FutureBuilder<Post>(
//                       future: fetchPost(),
//                       builder: (context, snapshot) {
//                         if (snapshot.hasData) {
//                           Data d = snapshot.data.data;
//                           List<Categories> list = d.categories;
//                           List<TopProducts> topProducts = d.topProducts;
Widget buildItem(context, List<Datum> items) {
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

Widget buildSrchItemDetails(context, List<Datum> items, index) {
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
                      Addbutton(), /*RaisedButton(
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
    onTap: () {
     
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SearchItemDetails(index, items)));
    },
  );
}


Widget buildDetailsOfPrdt(context,index,items){
   String ss = " ";
    if (items[index].description != null) {
      ss = items[index].description;
    }
    var withd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
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
              Container(
                  color: Colors.red,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back), onPressed: () {
                        print("Back to main page");
                       // Navigator.push(context,MaterialPageRoute(builder: (context)=>NewHomePageDart()) );
                      },
                      iconSize:40,
                      color: Colors.black,
                      )),
              Material(
                child: Image.network(
                  items[index].imageUrl,
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
                            items[index].nameInEng,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              items[index].nameInHin,
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
                          Container(
                            color: Colors.green,
                            child: Text(
                             items[index].mrp + " ₹",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Text(
                              items[index].price + " ₹",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
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
              Container(
                width: withd,
                height: withd,
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        ));
  }


