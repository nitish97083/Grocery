import 'package:flutter/material.dart';

class CustomColors {
  static Color primaryColors = Colors.black.withOpacity(0.2);
  static Color secondaryColors = Colors.white;
  static Color tertiary = Colors.black;
  static Color forthColors = Colors.grey;
  static String hostName = 'https://onlinekiranabazar.000webhostapp.com';
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

Widget topProductTitle(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 15),
    height: MediaQuery.of(context).size.height / 29,
    width: MediaQuery.of(context).size.width,
    child: Text(
      "Top Products",
      style: TextStyle(
          color: Color(0xff172B4D),
          fontFamily: 'SF Pro Display',
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget categoriestitleContainer(context) {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 5),
    height: MediaQuery.of(context).size.height / 29,
    width: MediaQuery.of(context).size.width,
    child: Text(
      "Categories",
      style: TextStyle(
          color: Color(0xff172B4D),
          fontFamily: CustomFont.categoryFont,
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),
  );
}

class CustomFont {
  static String categoryFont = 'SF Pro Display';
  static String productFont = 'Poppins';
  static String poppins = 'SF Pro Display';
}
