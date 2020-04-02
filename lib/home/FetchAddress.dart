import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';
import 'package:radhe_radhe/home/SwitchedAddress.dart';
import 'package:radhe_radhe/home/fatchAddressPojo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FatchAddress2 extends StatefulWidget {
  @override
  _FatchAddress2State createState() => _FatchAddress2State();
}

Future<FatchAddress> fetchAddressApi() async {
  var response = await http.get(
      "https://onlinekiranabazar.000webhostapp.com/api/address/get-all/12");
  if (response.statusCode == 200) {
    print(" Json Data Here ${jsonDecode(response.body)}");
    // If server returns an OK response, parse the JSON.
    return FatchAddress.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

bool isSwitched = false;

class _FatchAddress2State extends State<FatchAddress2> {
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.height;
    var y = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: SideMenuDrawer(),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
            //  height: MediaQuery.of(context).size.height/1.2,
            child: Column(
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                Container(
                  height: x / 12,
                  margin: EdgeInsets.only(bottom: 20),
                 
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10, right: y / 5),
                        child: Text("Saved Address",),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: y / 4.5, right: 10),
                        child: addNewAddress(context),
                      )
                    ],
                  ),
                )
              ],
            )),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                FutureBuilder<FatchAddress>(
                    future: fetchAddressApi(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<FatchAddress1> fetchAddressList =
                            snapshot.data.data;
                        print("Facthed Data From Api $fetchAddressList");
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
    
                              itemCount: fetchAddressList.length,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                print(
                                    "Length of Address1 Class data ${fetchAddressList.length}");
                                return Container(
                                 // color: Colors.red,
                                 margin: EdgeInsets.only(left:10,right: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Card(
                                        elevation:1,
                                        child: Container(
                                         // margin: EdgeInsets.only(right:y/12),
                                          height: x/10,
                                          padding: EdgeInsets.only(left:10,),
                                          width: y/1.4,
                                         
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                width: y/2,
                                                padding: EdgeInsets.only(top:10),
                                                child: Text("${fetchAddressList[index].landmark}, ${fetchAddressList[index].locality}"
                                                ,maxLines: 7,),
                                              ),
                                             Positioned(
                                               left:y/2,
                                              
                                               child:IconButton(
                                                 icon:Icon(Icons.edit), 
                                                onPressed: (){

                                                })
                                               ),
                                               Positioned(
                                               left: y/1.7,
                                               
                                               child:IconButton(
                                                 icon:Icon(Icons.delete), 
                                                onPressed: (){

                                                })
                                               ) 


                                            ],
                                          ),
                                        ),
                                      ),
                                      SwitchedAddress()
                                    ],
                                  ),
                                );
                              }),
                        );
                      } else {
                        return Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.height,
                            child: CupertinoActivityIndicator(
                              radius: 22,
                            ));
                      }
                    })
              ],
            ),
          ],
        )),
      ),
    );
  }
}

Widget addNewAddress(context) {
  return RaisedButton(
    onPressed: () {},
    child: Text("Add Address"),
  );
}
