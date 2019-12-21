import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/post.dart';

class ItemView extends StatefulWidget{


  ItemView(this. index, this. topProducts);
  final  index;
  final List<TopProducts> topProducts;


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemView();
  }
  
}

class _ItemView extends State<ItemView> {
  
  @override
  Widget build(BuildContext context) {
    String ss=" ";
    if(widget.topProducts[widget.index].description!=null){
      ss=widget.topProducts[widget.index].description;
    }
    var withd= MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(
        child:  Column(
          children: <Widget>[
            Material(
              child: Image.network(widget.topProducts[widget.index].imageUrl,
                width: withd,
                height: withd,),

            ),
           Stack(
             children: <Widget>[
               Container(
                 color: Colors.amber,
                 padding: EdgeInsets.all(10),
                 child:  Column(
                   children: <Widget>[
                     Container(
                       alignment: Alignment.centerLeft,
                       child: Text(widget.topProducts[widget.index].nameInEng,style: TextStyle(fontSize: 22),),
                     ),
                     Container(
                       alignment: Alignment.centerLeft,
                       child: Text(widget.topProducts[widget.index].nameInHin,style: TextStyle(fontSize: 22)),

                     )
                   ],
                 ),
               ),
               Positioned(
                 left: withd/1.2,
                 top: withd/29,
                 child: Column(
                   children: <Widget>[
                     Container(
                        color:Colors.green,
                       child: Text(widget.topProducts[widget.index].mrp+" ₹",style: TextStyle(
                         decoration:
                         TextDecoration
                             .lineThrough,
                         fontSize: 18,
                         color: Colors.white
                       ),),
                     ),
                     Container(

                       child: Text(widget.topProducts[widget.index].price+" ₹",style: TextStyle(
                         fontSize: 18
                       ),),
                     ),
                   ],
                 )
               )
             ],
           ),
            Container(
              child: Text(ss),
            )

          ],
        ),
      )
    );
  }
}