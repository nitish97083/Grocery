import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/CategoryProductPojo.dart';
import 'package:radhe_radhe/home/pojo/post.dart';

class CatProductDetailStack extends StatefulWidget {

  List<CateryProduct1> catProductDetail;
  final index;
  CatProductDetailStack(this.index,this.catProductDetail);
  @override
  _CatProductDetailStackState createState() => _CatProductDetailStackState();
}

class _CatProductDetailStackState extends State<CatProductDetailStack> {
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
                              
                              widget.catProductDetail[widget.index].nameInEng,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              widget.catProductDetail[widget.index].nameInHin,
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
                            widget.catProductDetail[widget.index].mrp + " ₹",
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
                            widget.catProductDetail[widget.index].price + " ₹",
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