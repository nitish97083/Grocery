import 'package:flutter/material.dart';

TextStyle style = TextStyle(color: CustomColors.secondaryColors, fontSize: 15);

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

Widget customAddressEditText2(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Delivery location",
        style: style,
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // TextField(
            //   decoration: InputDecoration(hintText: "helllo"),
            // ),
            Expanded(
                child: Text(
              "Kestopur Kolkata shjkshldfdv",
              maxLines: 2,
              style: style,
            )),
            Container(
              // margin: EdgeInsets.only(right:10),
              child: Icon(
                Icons.edit,
                color: CustomColors.secondaryColors,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget customAddressEditText(context) {
  return Container(
    height: MediaQuery.of(context).size.height / 11.5,
    child: Stack(
      children: <Widget>[
        Positioned(
          left: 10,
          child: Text(
            "Delivery location",
            style: style,
          ),
        ),
        Positioned(
            top: 15,
            left: 10,
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.55,
            child: Container(
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintStyle: style,
                  hintText: 'Search your Address',
                  suffixIcon: Icon(
                    Icons.edit,
                    color: CustomColors.secondaryColors,
                  ),
                  border: InputBorder.none,
                ),
                style: style,
              ),
            ))
      ],
    ),
  );
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
