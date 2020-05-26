
import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/Address/FetchAddress.dart';
import 'package:radhe_radhe/home/Address/SelectAddress.dart';

class SideMenuDrawer extends StatefulWidget {
  @override
  _SideMenuDrawerState createState() => _SideMenuDrawerState();
}


class _SideMenuDrawerState extends State<SideMenuDrawer> {
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
    var y = MediaQuery.of(context).size.height;
    return Drawer(
        elevation:2.0,
        child: ListView(
          children: <Widget>[
            Container(
             
              height: y / 13,
              width: x,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/homepageslider/edu.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:25),
                    child: Text("data"),
                  )
                ],
              ),
            ),
            Container(
              height: y / 18,
              padding: EdgeInsets.only(top: 15, bottom: 12, left: 12),
              color: Colors.grey.withOpacity(0.3),
              child: Text(
                "Welcome",
                style: TextStyle(),
              ),
            ),
            listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'Address',
                icon: Icon(Icons.location_on),
                icon2: Icon(Icons.edit),
                cartChange: 0,
                route:SelectAddress()),
            listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'Login',
                icon: Icon(Icons.group),
                icon2: Icon(Icons.edit),
                route: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )),
            listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'My Address list' ,//$
                icon: Icon(Icons.location_on),
                icon2: Icon(Icons.edit),
                route: FetchAddress2()),
            listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'My Orders',
                icon: Icon(Icons.location_on),
                icon2: Icon(Icons.edit),
                route: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )),
                listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'My Cart',
                icon: Icon(Icons.shopping_cart),
                icon2: Icon(Icons.edit),
                circleAvitar: Container(
                  margin: EdgeInsets.only(right:15),
                  child: CircleAvatar(
                    child: Text("1"),
                    radius:12,
                    backgroundColor: Colors.red,
                  ),
                ),
                route: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )),
               // Divider(color: Colors.grey.withOpacity(0.4)),
                 Container(
             // height: y / 18,
              padding: EdgeInsets.only(top: 15, bottom: 12, left: 12),
             // color: Colors.grey.withOpacity(0.3),
              child: Text(
                "Others",
                style: TextStyle(),
              ),
            ),
            listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'Got stuck ? Ask us !vhilu;oigidyrysje',
                icon: Icon(Icons.location_on),
                icon2: Icon(Icons.edit),
                cartChange: 1,
                route: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )),
                listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'Got stuck ? Ask us !vhilu;oigidyrysje',
                icon: Icon(Icons.location_on),
                icon2: Icon(Icons.edit),
                route: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )),
                listtiles(context, setState,
                title: 'Help & Supports',
                subtitle: 'Got stuck ? Ask us !vhilu;oigidyrysje',
                icon: Icon(Icons.location_on),
                icon2: Icon(Icons.edit),
                route: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )),
          ],
        ));
  }
}

Widget listtiles(BuildContext context, setState,
    {String title,
    Icon icon,
    String subtitle,
    Icon icon2,
    String text,
    Widget circleAvitar,
    var cartChange,
    route}) {
  return InkWell(
      child: Container(
        height: MediaQuery.of(context).size.height/12,
        padding: EdgeInsets.only(top: 5,bottom: 5),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(child: IconButton(icon: icon, onPressed: null)),
            Expanded(
              child: Container(
                child: Text(
                  subtitle,
                  maxLines: 2,
                ),
                width: MediaQuery.of(context).size.width / 1.4,
              ),
            ),
            Container(
              child:cartChange==0?IconButton(icon: icon2, onPressed: null):circleAvitar,
            ),
          ],
        ),
      ),
      onTap: (() {
        // Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      }));
}
