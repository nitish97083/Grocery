import 'package:flutter/material.dart';

class CustomColors {
  static Color primaryColors = Colors.red;
  static Color secondaryColors = Colors.white;
  static Color tertiary = Colors.black;
  static Color forthColors = Colors.grey;
}

Widget customCart(context) {
  return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 15,
      ),
      child: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            size: 30,
            color: CustomColors.secondaryColors,
          ),
          onPressed: null));
}
class CustomFont{

    static String categoryFont = 'SF Pro Display';
    static String productFont = 'Poppins';
    static String poppins = 'SF Pro Display';

    

}