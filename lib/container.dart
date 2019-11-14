
import 'package:flutter/material.dart';
import 'package:radhe_radhe/utils/CategoryGrid.dart';
import 'package:radhe_radhe/utils/HomepageSlider.dart';

class ObjectContainer extends StatefulWidget {
  @override
  _ObjectContainerState createState() => _ObjectContainerState();
}

class _ObjectContainerState extends State<ObjectContainer> {
  @override
  Widget build(BuildContext context) {
    var x =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image.asset("assets/ANS.png"),
           Card(
             margin: EdgeInsets.only(top:15),
             child: Container(
               margin: EdgeInsets.only(top: 15),
              height: x/2,
              child:Container(
                 padding: EdgeInsets.symmetric(horizontal:15),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Top Savers today",style: TextStyle(color: Colors.black,fontSize:20),),
                          Container(
                          //  padding: EdgeInsets.only(right:20),
                            child: RaisedButton(
                              onPressed: (){},
                              child: Text("See All",style: TextStyle(color: Colors.green),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          
                        ],
                      ),
                    )
                  ],
                ),
              ) ,
             ),
           )
          ],
        ),
      ),
      
    );
  }
}