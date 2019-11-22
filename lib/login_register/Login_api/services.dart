


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ServiceAPI extends StatefulWidget {
  @override
  _ServiceAPIState createState() => _ServiceAPIState();
}

class _ServiceAPIState extends State<ServiceAPI> {

String url="http://192.168.31.98:8000/api/newuser";

  var data;
  Future<String> getDat()async{

     http.Response response = await http.get(

       Uri.encodeFull(url),
       headers:{
       'Accept':'application/json'
       }
     );
       this.setState(() {
         if(response!=null){
       if(response.body!=null){
          data =jsonDecode(response.body);

       }
         }
    });
     data.forEach((v){

          print(v['section']+" "+v['sectionContentApp']);
     });
         
        
    return 'Success';
     }
     
      @override
      void initState(){
       this. getDat();
      }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

