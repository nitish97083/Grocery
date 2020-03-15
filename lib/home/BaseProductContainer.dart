import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/AddButtonOfCart.dart';
import 'package:radhe_radhe/home/pojo/post.dart';

import '../single_item_view.dart';


class BaseProductContainer extends StatefulWidget {

   final index;
  final List<TopProducts> topProducts;
  BaseProductContainer(this.index,this.topProducts);
  @override
  _BaseProductContainerState createState() => _BaseProductContainerState();
}

class _BaseProductContainerState extends State<BaseProductContainer> {
  @override
  Widget build(BuildContext context) {
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
                                      widget.topProducts[widget.index].imageUrl,
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
                                      widget.topProducts[widget.index].nameInEng,
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
                        Positioned(
                          top: www / 5.6,
                          left: www / 4.2,
                          child: Addbutton(
                              widget.index,
                              widget
                                  .topProducts), /*RaisedButton(
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
                          ItemView(widget.index, widget.topProducts)));
            },
          );
  }
}