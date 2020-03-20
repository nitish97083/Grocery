

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:radhe_radhe/HomePage.dart';

// String name;
// String email;

// class SideMenu extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _SideMenu();
//   }
// }

// //create a list for the list items
// class _SideMenu extends State<SideMenu> {
//   bool _isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//    // this.get();
//   }
// //*************** fetch Email from API*********************************************************************************
//   // void get() {
//   //   sfetch.readname().then((String n) {
//   //     name = n;
//   //     sfetch.readmail().then((String mail) {
//   //       email = mail;
//   //       setState(() {
//   //         _isLoading = false;
//   //       });
//   //     });
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     //print('called');

//     return Drawer(
//       elevation: 2,
//       child: 
//       // _isLoading
//       //     ? Center(
//       //         child: Center(
//       //             child: Image(
//       //                 image: AssetImage("assets/logocv.gif"),
//       //                 height: MediaQuery.of(context).size.height / 12,
//       //                 width: MediaQuery.of(context).size.width / 6)),
//       //       )
//       //     : Container(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/sidemenu.png"),
//                       fit: BoxFit.cover)),
//               child: ListView(
//                 padding: const EdgeInsets.all(0.0),
//                 children: <Widget>[
//                   Container(
//                       child: UserAccountsDrawerHeader(
//                     decoration: BoxDecoration(color: Colors.transparent),
//                     accountName: Text(name),
//                     accountEmail: Text(email),
//                     // currentAccountPicture: CircleAvatar(
//                     //   backgroundImage: appdp != null
//                     //       ? FileImage(appdp)
//                     //       : AssetImage("assets/profileimage.png"),
//                     //   backgroundColor: Colors.white,
//                     // ),
//                     otherAccountsPictures: <Widget>[
//                       IconButton(
//                         icon: Icon(Icons.home),
//                         color: Colors.white,
//                         onPressed: () {
//                           Navigator.of(context).popUntil((Route route) {
//                             //  Navigator.pop(context);
//                             return route.isFirst;
//                           });
//                         },
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           // Navigator.of(context).push(
//                           //     MaterialPageRoute(builder: (c) => Setting()));
//                           print("Setting page called");
//                         },
//                         icon: Icon(
//                           Icons.settings,
//                           color: Colors.white,
//                         ),
//                       ),
                     
//                     ],
//                   )),
//                   //****************************** for support******************************8888 */
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Help & Supports',
//                       subtitle: 'Got stuck ? Ask us !',
//                       icon: FontAwesomeIcons.question,
//                       route:HomePage()),
//                   Divider(color: Colors.white30),
//             //       Container(
//             //         padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
//             //         child: Row(
//             //           crossAxisAlignment: CrossAxisAlignment.end,
//             //           children: <Widget>[
//             //             Expanded(
//             //               child: Column(
//             //                 children: <Widget>[
//             //                   IconButton(
//             //                     padding: EdgeInsets.only(bottom: 15.0),
//             //                     onPressed: () {
//             //                       Navigator.push(
//             //                           context,
//             //                           MaterialPageRoute(
//             //                               builder: (context) => (About())));
//             //                     },
//             //                     icon: Icon(
//             //                       Icons.info,
//             //                       size:
//             //                           MediaQuery.of(context).size.aspectRatio *
//             //                               40.0,
//             //                       color: Colors.white,
//             //                     ),
//             //                     tooltip: 'About',
//             //                   ),
//             //                   Text(
//             //                     'About',
//             //                     style: TextStyle(
//             //                         height: 0.0,
//             //                         fontWeight: FontWeight.normal,
//             //                         fontSize: 10,
//             //                         color: Colors.white),
//             //                   )
//             //                 ],
//             //               ),
//             //             ),
//             //             Expanded(
//             //               child: Column(
//             //                 children: <Widget>[
//             //                   IconButton(
//             //                     padding: EdgeInsets.only(bottom: 15.0),
//             //                     onPressed: () {
//             //                       Navigator.push(
//             //                           context,
//             //                           MaterialPageRoute(
//             //                               builder: (context) => (Terms())));
//             //                     },
//             //                     icon: Icon(
//             //                       Icons.accessible,
//             //                       size:
//             //                           MediaQuery.of(context).size.aspectRatio *
//             //                               40.0,
//             //                       color: Colors.white,
//             //                     ),
//             //                     tooltip: 'Terms',
//             //                   ),
//             //                   Text('Terms',
//             //                       style: TextStyle(
//             //                           height: 0.0,
//             //                           fontWeight: FontWeight.normal,
//             //                           fontSize: 10,
//             //                           color: Colors.white))
//             //                 ],
//             //               ),
//             //             ),
//             //             Expanded(
//             //               child: Column(
//             //                 children: <Widget>[
//             //                   IconButton(
//             //                     padding: EdgeInsets.only(bottom: 15.0),
//             //                     onPressed: () {
//             //                       Navigator.push(
//             //                           context,
//             //                           MaterialPageRoute(
//             //                               builder: (context) => (Privacy())));
//             //                     },
//             //                     icon: Icon(Icons.apps,
//             //                         size: MediaQuery.of(context)
//             //                                 .size
//             //                                 .aspectRatio *
//             //                             40.0,
//             //                         color: Colors.white),
//             //                     tooltip: 'Privacy',
//             //                   ),
//             //                   Text('Privacy',
//             //                       style: TextStyle(
//             //                           height: 0.0,
//             //                           fontWeight: FontWeight.normal,
//             //                           fontSize: 10,
//             //                           color: Colors.white))
//             //                 ],
//             //               ),
//             //             ),
//             //             Expanded(
//             //               child: Column(
//             //                 children: <Widget>[
//             //                   IconButton(
//             //                     padding: EdgeInsets.only(bottom: 15.0),
//             //                     onPressed: () {
//             //                       logout(context);
//             //                     },
//             //                     icon: Icon(Icons.link_off,
//             //                         size: MediaQuery.of(context)
//             //                                 .size
//             //                                 .aspectRatio *
//             //                             40.0,
//             //                         color: Colors.white),
//             //                     tooltip: 'Logout',
//             //                   ),
//             //                   Text('Logout',
//             //                       style: TextStyle(
//             //                           height: 0.0,
//             //                           fontWeight: FontWeight.normal,
//             //                           fontSize: 10,
//             //                           color: Colors.white))
//             //                 ],
//             //               ),
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //       Divider(color: Colors.white30),
//                 ],
//               ),
//             ),
              
//     );
//   }
// }

// Widget listtiles(BuildContext context, setState,
//     {String title, IconData icon, String subtitle, route}) {
//   return ListTile(
//     title: Text(title, style: TextStyle(color: Colors.white, fontSize: 15.0)),
//     leading: Icon(
//       icon,
//       size: MediaQuery.of(context).size.aspectRatio * 55.0,
//       color: Colors.white,
//     ),
//     subtitle: Text(
//       subtitle,
//       style: TextStyle(color: Colors.white),
//     ),
//     onTap: () {
//       setState(() {
//         Navigator.pop(context);
//         Navigator.push(context, MaterialPageRoute(builder: (context) => route));
//       });
//     },
//   );
// }
