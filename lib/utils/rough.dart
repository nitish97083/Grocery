
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyDocument extends StatefulWidget {
//   @override
//   _MyDocumentState createState() => _MyDocumentState();
// }
// everythingSynced(BuildContext context) {
//     CupertinoAlertDialog d = CupertinoAlertDialog(
//       content: Text("Everything is synchronized properly"),
//       actions: <Widget>[
//         CupertinoButton(
//           child: Text("Great!"),
//           onPressed: Navigator.of(context).pop,
//         )
//       ],
//     );

//     showCupertinoDialog(context: context, builder: (_) => d);
//   }
// class _MyDocumentState extends State<MyDocument> {
//   bool pageLoading = true;
  
//   @override
//   void initState() {
//     super.initState();
//     get();
//   }
//   void get(){
//     setState(() {
//      pageLoading=false; 
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//   print(pageLoading);
//      return pageLoading
//         ? DecoratedBox(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/ANS.png"), fit: BoxFit.fill)),
//             child: Center(
//                 child: Image(
//                     image: AssetImage("assets/ANS.png"),
//                     height: MediaQuery.of(context).size.height / 12,
//                     width: MediaQuery.of(context).size.width / 6)),
//           )
//         :Container(
//           color: Colors.white,
//     //       decoration: BoxDecoration(
//     //         color: Colors.black,
//     //        image: DecorationImage(image: AssetImage('assets/ANS.png'),fit: BoxFit.cover
//     //  ),
//     //       ),
//            child: 
//             Scaffold(
//             backgroundColor: Colors.transparent,
//             // appBar:(section != "51100")&&(section != "51101")&&(section != "51102")&&
//             // (section != "51103")? TopMenuBar():null,
            
//             floatingActionButtonLocation:
//                 FloatingActionButtonLocation.centerDocked,
//             floatingActionButton: FloatingActionButton(
//               backgroundColor: Colors.pinkAccent,
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute<Null>(
//                     builder: (BuildContext context) {
//                       return Container(child:Text("this is fantastic code style"),);
//                     },
//                   ),
//                 );
//               },
//               child: Icon(
//                 Icons.visibility,
//                 color: Colors.white,
//               ),
//               elevation: 0.0,
//             ),
//            // drawer: SideMenu(),
           
          
            
//            // bottomNavigationBar: MybottomNav(-1),
//             body:NestedScrollView(
//         headerSliverBuilder: (context,bool ibs)=>[
//           SliverAppBar( 
       
//             backgroundColor: Colors.transparent,
//       //       actions: <Widget>[
//       //   ValueListenableBuilder(
//       //    // valueListenable: syncOnGoing,
//       //     builder: (context, loading, child) => loading
//       //         ? Padding(
//       //             padding: EdgeInsets.only(right: 14),
//       //             child: CupertinoActivityIndicator(),
//       //           )
//       //         : ValueListenableBuilder(
//       //           //  valueListenable: syncNotifier,
//       //             builder: (context, shouldUpdate, child) => !shouldUpdate
//       //                 ? IconButton(
//       //                     onPressed: () {
//       //                       everythingSynced(context);
//       //                     },
//       //                     icon: Icon(
//       //                       Icons.done_outline,
//       //                       color: Colors.white,
//       //                       size: 14,
//       //                     ),
//       //                   )
//       //                 : IconButton(
//       //                     onPressed: () {
//       //                      // syncthedata(context);
//       //                      print("Tick icone on pressed");
//       //                     },
//       //                     icon: Icon(
//       //                       Icons.sync,
//       //                       color: Colors.white,
//       //                     ),
//       //                     tooltip: 'Sync',
//       //                   ),
//       //           ),
//       //   )
//       // ],
//             //backgroundColor: Colors.blue,
//             expandedHeight: 150.0,
//             floating: false,
//             pinned: true,
//             flexibleSpace: Container(decoration: BoxDecoration(
              
//           //     gradient: LinearGradient( 
              
//            //colors: 
//              [    
//           //     // Colors.black,
//           //     // Colors.black,  
//           //     Color(colors[section]["c1"]),
//           //     Color(colors[section]["c2"]),
//           //       ]
//           //       )
//                 ),
//               child: Container(
//                 color: Colors.grey.withOpacity(0.1),
//                 child: FlexibleSpaceBar(
//                   title:
//                  Text(
//                    "My Documents",
//                    style: TextStyle(
//                      fontWeight: FontWeight.w300,
//                      fontSize: 18,
//                      letterSpacing: 1.5),
//                      ),
//                   background: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                    // Icon(Icons.work,size: 50,color: Colors.white,)
//                    Image.asset('assets/icons_new/cart.png',height: 60,width: 60,),
//                   //Image.asset('assets/acd.svg',color: Colors.black,)
//                   ],),
//                 centerTitle: true,
//                 )
//                 )
//                 ),
//           )
        
          
//         ],
//        body:Center(
//          child: Text("From  Database ",style: TextStyle(fontSize: 30,
//          fontFamily: 'Poppins',
//          fontWeight: FontWeight.bold,
//          fontStyle: FontStyle.italic
//          ),
//          ),
//        ) , 
//         )
//        ),
//       );
//   }
// }