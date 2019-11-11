import 'package:flutter/material.dart';

class CategoryGrid{
  static getCategoryGrid(BuildContext context,var categoryName,categoryIconUrl)
  {
    return Container(
              margin: EdgeInsets.only(top: 20),
              //color: Colors.red,
              height:MediaQuery.of(context).size.height/2,
              child: GridView.builder(
                itemCount:12,//categoryName.toList().length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:4),
                itemBuilder: (BuildContext context,int index){
                        return GestureDetector(child:Card(
                          child: Container(
                            child: Text("data"),
                          ),
                        ));
                },
              ),
            );
  }
}
