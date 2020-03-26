import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/post.dart';

class ProductNameStack extends StatefulWidget {

  List<TopProducts> topProducts;
  final index;
  ProductNameStack(this.index,this.topProducts);
  @override
  _ProductNameStackState createState() => _ProductNameStackState();
}

class _ProductNameStackState extends State<ProductNameStack> {
  @override
  Widget build(BuildContext context) {
     var www = MediaQuery.of(context).size.width;
    return Stack(
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
                              
                              widget.topProducts[widget.index].nameInEng,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              widget.topProducts[widget.index].nameInHin,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17),
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
                            widget.topProducts[widget.index].mrp + " ₹",
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
                            widget.topProducts[widget.index].price + " ₹",
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
              //******************************AddButton */
              ],
            );
  }
}