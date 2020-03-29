import 'package:flutter/material.dart';
import 'package:radhe_radhe/drawer/SideMenu.dart';
import 'package:radhe_radhe/home/AddButtonOfCart.dart';
import 'package:radhe_radhe/home/CustomProperties.dart';
import 'package:radhe_radhe/home/ExpationPannelForPrdctDtl.dart';
import 'package:radhe_radhe/home/HomePageFront.dart';
import 'package:radhe_radhe/home/pojo/CategoryProductPojo.dart';


import 'CategoryProductDetailsStack.dart';


class CategoryProductDetail extends StatefulWidget {
  CategoryProductDetail(this.index, this.catProductDetail);
  final index;
  final List<CateryProduct1> catProductDetail;
 
  @override
  State<StatefulWidget> createState() {
    return _CategoryProductDetail();
  }
}

class _CategoryProductDetail extends State<CategoryProductDetail> {

  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    String ss = " ";
    if (widget.catProductDetail[widget.index].description != null) {
      ss = widget.catProductDetail[widget.index].description;
    }
    var withd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColors,
        actions: <Widget>[
          customCart(context)
        ],
      ),
      drawer: SideMenuDrawer(),

      //******************************************BottomSheet Code */
        // bottomSheet: Container(
        //   child: Card(
        //       color: Colors.white,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(15.0),
        //       ),
        //       child: Container(
        //         width: withd,
        //         height: withd / 6,
        //       )),
        // ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(parent:AlwaysScrollableScrollPhysics()),
          controller: _controller,
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
              Material(
                child: Image.network(
                  widget.catProductDetail[widget.index].imageUrl,
                  width: withd,
                  height: withd,
                ),
              ),
              // Stack(
              //   children: <Widget>[
              //     Container(
              //       color: Colors.amber,
              //       padding: EdgeInsets.all(10),
              //       child: Column(
              //         children: <Widget>[
              //           Container(
              //             alignment: Alignment.centerLeft,
              //             child: Text(
              //               widget.catProductDetail[widget.index].nameInEng,
              //               style: TextStyle(fontSize: 22),
              //             ),
              //           ),
              //           Container(
              //             alignment: Alignment.centerLeft,
              //             child: Text(
              //                 widget.catProductDetail[widget.index].nameInHin,
              //                 style: TextStyle(fontSize: 22)),
              //           )
              //         ],
              //       ),
              //     ),
              //     Positioned(
              //         left: withd / 1.2,
              //         top: withd / 29,
              //         child: Column(
              //           children: <Widget>[
              //             Container(
              //               color: Colors.green,
              //               child: Text(
              //                 widget.catProductDetail[widget.index].mrp + " ₹",
              //                 style: TextStyle(
              //                     decoration: TextDecoration.lineThrough,
              //                     fontSize: 18,
              //                     color: Colors.white),
              //               ),
              //             ),
              //             Container(
              //               child: Text(
              //                 widget.catProductDetail[widget.index].price + " ₹",
              //                 style: TextStyle(fontSize: 18),
              //               ),
              //             ),
              //           ],
              //         ))
              //   ],
              // ),
             // BaseProductContainer(widget.index,widget. catProductDetail),
             Container(
               margin: EdgeInsets.only(left:10.0,right:5.0),
               child: Material(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left:5.0),
                        width: MediaQuery.of(context).size.width/1.8,
                       // color: Colors.white,
                        child: CatProductDetailStack(widget.index, widget.catProductDetail),
                      ),
                     Container(
                      // color: Colors.white,
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/12,
                       bottom: 12,
                       right: MediaQuery.of(context).size.width/25,
                     //  left: MediaQuery.of(context).size.width/
                       ),
                      // padding: EdgeInsets.only(left:50),
                      child: Addbutton(),
                      
                     ) 
                   ],
                 ),
                   //Add AddButton Here in Row
                  color: Color(0xff2A363B),
                   elevation: 2,
                    shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
               ),
                 ),
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
                height: withd/1.8,
                padding: EdgeInsets.all(10),
                child:ExpantionPannelDetails()
              ),
              // Container(
              //   child: topProductTitle(context),
              // ),
              // TopProductContainer(widget.catProductDetail),
              
            ],
          ),
        ));
  }
}
