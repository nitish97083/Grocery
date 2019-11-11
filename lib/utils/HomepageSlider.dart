import 'package:flutter/material.dart';

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

class ListItem {}
