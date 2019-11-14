import 'package:flutter/material.dart';
import 'package:radhe_radhe/utils/CategoryGrid.dart';

class HomepageSlider {
  static getSlider(BuildContext context, int numberOfSlids, var imageUrl) {
    if (numberOfSlids > 0) {
      return Container(
        height: MediaQuery.of(context).size.height / 5,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
           
              return Container(
                child: Image.asset(imageUrl[index],width: MediaQuery.of(context).size.width / 1),
              );
            
          },
          itemCount: numberOfSlids,
          scrollDirection: Axis.horizontal,
        ),
      );
    }
    else return null;
  }
}

class ListItem {
  static var height;
  static getListBuilder(BuildContext context){
    return Container(
     // margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 7),
            child: Text("data from dynamic"),
          ),
          CategoryGrid.getCategoryGrid(context,[],[],8,2,DynamicHeight.dynamicHeight(context, "2222")),
        ],
      ),
    );

  }
}
class DynamicHeight{

static dynamicHeight(context,id){
   if(id=="1111"){
  return MediaQuery.of(context).size.height/3;
   
   }
   else if(id=='2222'){
    return MediaQuery.of(context).size.height/3;
   
   }
  }
}
