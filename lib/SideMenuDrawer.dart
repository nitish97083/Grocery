
// import 'package:cvdragonapp_v1/My_Ddocument.dart';
// import 'package:cvdragonapp_v1/My_Resume.dart';
// import 'package:cvdragonapp_v1/Nitish/ActivateSubscription/Welcome.dart';

// import 'package:cvdragonapp_v1/Nitish/InstitutePage/FrontPageOfInstitute.dart';
// import 'package:cvdragonapp_v1/Nitish/ServicePag.dart';
// import 'package:cvdragonapp_v1/Review&Ratting.dart';
// import 'package:cvdragonapp_v1/activateSubscription.dart';
// import 'package:cvdragonapp_v1/help.dart';
// import 'package:cvdragonapp_v1/knowledgeCenter/Knowledge.dart';
// import 'package:cvdragonapp_v1/notification.dart';
// import 'package:cvdragonapp_v1/setting.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import './myprofiles.dart';
// import './coverletters.dart';
// import './publicprofile.dart';
// import './MyDesigns.dart';
// import './Terms.dart';
// import './Privacy.dart';
// import './sharedfetch.dart' as sfetch;
// import './About.dart';
// import './vishal/utils.dart';
// import './notification.dart';
// import './Notifiers.dart' show appdp;
// import 'knowledge_centre.dart';

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
//     this.get();
//   }

//   void get() {
//     sfetch.readname().then((String n) {
//       name = n;
//       sfetch.readmail().then((String mail) {
//         email = mail;
//         setState(() {
//           _isLoading = false;
//         });
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     //print('called');

//     return Drawer(
//       elevation: 2,
//       child: _isLoading
//           ? Center(
//               child: Center(
//                   child: Image(
//                       image: AssetImage("assets/logocv.gif"),
//                       height: MediaQuery.of(context).size.height / 12,
//                       width: MediaQuery.of(context).size.width / 6)),
//             )
//           : Container(
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
//                     currentAccountPicture: CircleAvatar(
//                       backgroundImage: appdp != null
//                           ? FileImage(appdp)
//                           : AssetImage("assets/profileimage.png"),
//                       backgroundColor: Colors.white,
//                     ),
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
//                           Navigator.of(context).push(
//                               MaterialPageRoute(builder: (c) => Setting()));
//                           print("Setting page called");
//                         },
//                         icon: Icon(
//                           Icons.settings,
//                           color: Colors.white,
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           Navigator.of(context).push(
//                               MaterialPageRoute(builder: (c) => Notificati()));
//                           print("Notification page called");
//                         },
//                         icon: Icon(
//                           Icons.notifications,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   )),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'My Profiles',
//                       subtitle: 'Check Your Profiles',
//                       icon: FontAwesomeIcons.portrait,
//                       route: MyProfiles()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Cover Letters',
//                       subtitle: 'View your cover letters',
//                       icon: FontAwesomeIcons.mailBulk,
//                       route: CoverLetters()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Designs',
//                       subtitle: 'View your designs',
//                       icon: FontAwesomeIcons.magic,
//                       route: MyDesigns()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Institute',
//                       subtitle: 'My Institute Details',
//                       icon: FontAwesomeIcons.university,
//                       route: FrontPageOfInst()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Public Profile',
//                       subtitle: 'View your public profile',
//                       icon: FontAwesomeIcons.users,
//                       route: PublicProfile()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Activate Subscription',
//                       subtitle: 'Subscribe for premium services',
//                       icon: FontAwesomeIcons.wallet,
//                       route: WelCome()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Services',
//                       subtitle: 'View our services',
//                       icon: FontAwesomeIcons.conciergeBell,
//                       route:ServicePage()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'My Resumes',
//                       subtitle: 'View your resumes',
//                       icon: FontAwesomeIcons.fileInvoice,
//                       route: MyResume()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'My Documents',
//                       subtitle: 'View Your Documents',
//                       icon: FontAwesomeIcons.folderOpen,
//                       route: MyDocument()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Knowledge Center',
//                       subtitle: 'Get Some Knowledge',
//                       icon: FontAwesomeIcons.infoCircle,
//                       route: KnowLedge()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Review & Ratings',
//                       subtitle: 'Liked cvDragon ? Rate us !',
//                       icon: FontAwesomeIcons.starHalfAlt,
//                       route: ReviewAndRating()),
//                   Divider(color: Colors.white30),
//                   listtiles(context, setState,
//                       title: 'Help & Supports',
//                       subtitle: 'Got stuck ? Ask us !',
//                       icon: FontAwesomeIcons.question,
//                       route: Help()),
//                   Divider(color: Colors.white30),
//                   Container(
//                     padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: <Widget>[
//                         Expanded(
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 padding: EdgeInsets.only(bottom: 15.0),
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => (About())));
//                                 },
//                                 icon: Icon(
//                                   Icons.info,
//                                   size:
//                                       MediaQuery.of(context).size.aspectRatio *
//                                           40.0,
//                                   color: Colors.white,
//                                 ),
//                                 tooltip: 'About',
//                               ),
//                               Text(
//                                 'About',
//                                 style: TextStyle(
//                                     height: 0.0,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 10,
//                                     color: Colors.white),
//                               )
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 padding: EdgeInsets.only(bottom: 15.0),
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => (Terms())));
//                                 },
//                                 icon: Icon(
//                                   Icons.accessible,
//                                   size:
//                                       MediaQuery.of(context).size.aspectRatio *
//                                           40.0,
//                                   color: Colors.white,
//                                 ),
//                                 tooltip: 'Terms',
//                               ),
//                               Text('Terms',
//                                   style: TextStyle(
//                                       height: 0.0,
//                                       fontWeight: FontWeight.normal,
//                                       fontSize: 10,
//                                       color: Colors.white))
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 padding: EdgeInsets.only(bottom: 15.0),
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => (Privacy())));
//                                 },
//                                 icon: Icon(Icons.apps,
//                                     size: MediaQuery.of(context)
//                                             .size
//                                             .aspectRatio *
//                                         40.0,
//                                     color: Colors.white),
//                                 tooltip: 'Privacy',
//                               ),
//                               Text('Privacy',
//                                   style: TextStyle(
//                                       height: 0.0,
//                                       fontWeight: FontWeight.normal,
//                                       fontSize: 10,
//                                       color: Colors.white))
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 padding: EdgeInsets.only(bottom: 15.0),
//                                 onPressed: () {
//                                   logout(context);
//                                 },
//                                 icon: Icon(Icons.link_off,
//                                     size: MediaQuery.of(context)
//                                             .size
//                                             .aspectRatio *
//                                         40.0,
//                                     color: Colors.white),
//                                 tooltip: 'Logout',
//                               ),
//                               Text('Logout',
//                                   style: TextStyle(
//                                       height: 0.0,
//                                       fontWeight: FontWeight.normal,
//                                       fontSize: 10,
//                                       color: Colors.white))
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Divider(color: Colors.white30),
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
