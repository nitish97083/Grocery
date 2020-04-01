import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/fatchAddressPojo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class FatchAddress2 extends StatefulWidget {
  @override
  _FatchAddress2State createState() => _FatchAddress2State();
}



Future<List<FatchAddress1>> serchedProductList;
Future<List<FatchAddress1>> searchedProductName(productName) async {
  final response = await http.get(
      'https://onlinekiranabazar.000webhostapp.com/api/item-search/' +
          productName);
  print(response.body.toString());
  if (response.statusCode == 200) {
    FatchAddress fetchAddress = new FatchAddress();
    fetchAddress = FatchAddress.fromJson(json.decode(response.body));
    List<FatchAddress1> data = fetchAddress.data;
    for (FatchAddress1 d in data) {
      print(d.landmark);
    }
   
    return data;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class _FatchAddress2State extends State<FatchAddress2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}