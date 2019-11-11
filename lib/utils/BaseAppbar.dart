import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final AppBar appBar;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        //title: title,
        //backgroundColor: backgroundColor,
        actions: <Widget>[
           IconButton(
            padding: EdgeInsets.only(right:20),
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
           IconButton(
            padding: EdgeInsets.only(right:20),
            icon: Icon(Icons.notifications),
            onPressed: (){},
          ),
          
           IconButton(
            padding: EdgeInsets.only(right:20),
            icon: Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
          Builder(
            builder: (BuildContext context) {
               return IconButton(
               padding: EdgeInsets.only(right:20),
              icon: Icon(Icons.menu),
              onPressed: (){
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>CustomDrawer()));
                Scaffold.of(context).openEndDrawer();
              },
            
            );
            } 
          )
        ],
      );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}