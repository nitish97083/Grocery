import 'package:flutter/material.dart';

class CategoryGrid{
  static getCategoryGrid(BuildContext context,var categoryName,categoryIconUrl,numberOfItemCount,numberOfAxisCount,height)
  {
    return Container(
              margin: EdgeInsets.only(top: 20),
              //color: Colors.red,
               height: height,
              child: GridView.builder(
                itemCount:numberOfItemCount,//categoryName.toList().length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:numberOfAxisCount),
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
