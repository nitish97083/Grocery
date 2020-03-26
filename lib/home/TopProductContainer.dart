import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/post.dart';

import '../single_item_view.dart';
import 'AddButtonOfCart.dart';
import 'BaseProductContainer.dart';

class TopProductContainer extends StatefulWidget {
  //final index;
  final List<TopProducts> topProducts;
  TopProductContainer( this.topProducts);
  @override
  _TopProductContainerState createState() => _TopProductContainerState();
}

class _TopProductContainerState extends State<TopProductContainer> {
  @override
  Widget build(BuildContext context) {
    var www = MediaQuery.of(context).size.width;
    return Container(
        /*ListView.builder(
                              itemCount: list.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildBody(context, index, list))),*/
        //height: 1000,
        child: GridView.count(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      childAspectRatio: 0.7,

      // Generate 100 widgets that display their index in the List.
      children: List.generate(widget.topProducts.length, (index) {
        return Padding(
          padding: EdgeInsets.all(10),
           
          // height: MediaQuery.of(context).size.width/5,
          // width: MediaQuery.of(context).size.width/5,
          // color: Colors.red,

          //*********************Change here    refract InkWell and remove from BaseProductContainer

          //************************* */
          child:InkWell(
            child: BaseProductContainer(index, widget.topProducts),
             onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ItemView(index, widget.topProducts)));
            },
            ) 
//          InkWell(
//             //item card started here grid view
//             child: Material(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 color: Color(0xff2A363B),
//                 elevation: 2,
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                         height: www / 2.5,
//                         width: www / 2,
//                         child: Material(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             color: Color(0xff2A993B),
//                             elevation: 2,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: NetworkImage(
//                                       widget.topProducts[index].imageUrl,
//                                     ),
//                                   ),
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(10),
//                                       topRight: Radius.circular(10))),
//                             ))),
//                     Stack(
//                       children: <Widget>[
//                         Positioned(
//                           child: Container(
//                             height: www / 3.8,
//                             // color: Colors.blueAccent,
//                             child: Align(
//                               alignment: Alignment.bottomCenter,
//                               child: Container(
//                                 // color: Colors.yellow,
//                                 child: Column(
//                                   children: <Widget>[
//                                     SizedBox(
//                                       height: 3,
//                                     ),
//                                     Text(
//                                       widget.topProducts[index].nameInEng,
//                                       maxLines: 1,
//                                       overflow: TextOverflow.ellipsis,
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 17,
//                                       ),
//                                     ),
//                                     Text(
//                                       widget.topProducts[index].nameInHin,
//                                       maxLines: 1,
//                                       overflow: TextOverflow.ellipsis,
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 17),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: www / 5,
//                           child: Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Row(
//                               children: <Widget>[
//                                 Container(
//                                   margin: EdgeInsets.only(left: 10),
//                                   child: Text(
//                                     widget.topProducts[index].mrp + " ₹",
//                                     style: TextStyle(
//                                         decoration: TextDecoration.lineThrough,
//                                         fontSize: 14,
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                                 Container(
//                                   color: Colors.green,
//                                   alignment: Alignment.bottomLeft,
//                                   margin: EdgeInsets.only(left: 10),
//                                   child: Text(
//                                     widget.topProducts[index].price + " ₹",
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         decoration: TextDecoration.none,
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: www / 5.6,
//                           left: www / 4.2,
//                           child: Addbutton(
//                               index,
//                               widget
//                                   .topProducts), /*RaisedButton(
// ),
//                                               child: Text("add"),
//                                               onPressed: () {},
//                                               color: Colors.white,
//                                               textColor: Colors.black,
//                                               splashColor: Colors.blueAccent,
//                                             ),*/
//                         )
//                       ],
//                     )
//                   ],
//                 )),
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           ItemView(index, widget.topProducts)));
//             },
//           ),
        );
      }),
    ));
  }
}
