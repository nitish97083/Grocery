
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/post.dart';
import 'CustomProperties.dart';

class SearchForProduct extends StatefulWidget {
  @override
  _SearchForProductState createState() => _SearchForProductState();
}

Future<Post> fetchPost() async {
  var response = await http
      .get("https://onlinekiranabazar.000webhostapp.com/api/getCategories");
  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
    // If server returns an OK response, parse the JSON.
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
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
            autocorrect: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: CustomColors.tertiary),
              decoration: InputDecoration(
                hintText: "Insert Product Name",hintStyle:style,
                disabledBorder: InputBorder.none
              )
            ),
          ),
         customCart(context)
        ],
      ),
    );
  }
}