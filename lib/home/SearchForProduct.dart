import 'package:flutter/material.dart';

import 'CustomColors.dart';

class SearchForProduct extends StatefulWidget {
  @override
  _SearchForProductState createState() => _SearchForProductState();
}
TextStyle style = TextStyle(color: CustomColors.tertiary);
class _SearchForProductState extends State<SearchForProduct> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColors,
        actions: <Widget>[
          // IconButton(icon:Icon(Icons.arrow_back,color: CustomColors.secondaryColors,) 
          // , onPressed:(){
          //   Navigator.pop(context);
          // }),
          
          Container(
           // color: Colors.white,
            width:MediaQuery.of(context).size.width/1.5,
            child: TextField(
              controller: _controller,
              style: TextStyle(color: CustomColors.tertiary),
              decoration: InputDecoration(
                hintText: "Serach product",hintStyle:style,
                
              )
            ),
          ),
         customCart(context)
        ],
      ),
    );
  }
}