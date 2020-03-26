import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/AddButtonOfCart.dart';
import 'package:radhe_radhe/home/ProductNameStack.dart';
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
    return Material(
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
                  ProductNameStack(widget.index, widget.topProducts),
                  Positioned(
                     top: www / 5.6,
                  left: www / 4.2,
                    child: Addbutton())
                ],
              ),
             
          ],

          )
        );
  }
}
