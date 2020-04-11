import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/post.dart';


class CartAddValue {
   
     static var count = 0;
}

class Addbutton extends StatefulWidget {

  // final index;
  // final List<TopProducts> topProducts;
  // Addbutton(this.index, this.topProducts);
  
  @override
  _AddbuttonState createState() => _AddbuttonState();
}

class _AddbuttonState extends State<Addbutton> {
   
   var countOfAddButton = CartAddValue.count;

  @override
  Widget build(BuildContext context) {
    return countOfAddButton==0 ? Container(
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
            onTap: () {
              print("Pressed Add Button");
              setState(() {
                countOfAddButton++;
              });
            },
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
                      onTap: () {
                        setState(() {
                          print("Count Decrement");
                          countOfAddButton--;
                        });
                      }),
                       InkWell(
                      child: Text("$countOfAddButton"),
                      onTap: () {
                        setState(() {
                          print("$countOfAddButton");
                          countOfAddButton--;
                        });
                      }),
                       InkWell(
                      child: Icon(
                        Icons.add,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                      onTap: () {
                        setState(() {
                          print("Count Increment");
                          countOfAddButton++;
                        });
                      })
                ],
              ),
            ),
          ),
        );
  }
}