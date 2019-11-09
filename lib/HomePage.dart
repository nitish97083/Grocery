import 'package:flutter/material.dart';
import 'package:radhe_radhe/Drawer.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

PageController controller;
  int currentpage = 0;

 
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    
    super.initState();
    controller = new PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.7,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:Drawer() ,
      appBar: AppBar(
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
      ),
       body: SingleChildScrollView(
         child: Container(
            child: Column(
            children: <Widget>[
            //  Container(
            //             height: MediaQuery.of(context).size.height / 2,
            //             width: MediaQuery.of(context).size.width,
            //             child: new PageView.builder(
            //                 itemCount:3,
            //                 onPageChanged: (value) {
            //                   setState(() {
            //                     currentpage = value;
            //                   });
            //                 },
            //                 controller: controller,
            //                 itemBuilder: (context, index) => builder(index)),
            //           ),
            Container(
              color: Colors.red,
              height: 300,
            )
            ],
            ),
         ),
       ),
    );
  }
  // builder(int index) {
  //   // print("assets/resumeDesignsLarge"+ data[index]['designid'].toString() +
  //   //           ".jpg");
  //   return new AnimatedBuilder(
  //     animation: controller,
  //     builder: (context, child) {
  //       double value = 0.9;
  //       return new Center(
  //         child: new SizedBox(
  //           height: MediaQuery.of(context).size.height / 1.8,
  //           width: Curves.easeOut.transform(value) * 500,
  //           child: child,
  //         ),
  //       );
  //     },
  //     child: new Card(
  //       child: Image(
  //         image: new AssetImage("assets/homepageslider/1${index+1}.jpg"),
  //         fit: BoxFit.fill,
  //       ),
  //       // child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/resumeDesignsLarge/1.jpg"))),),
  //       elevation: 15.0,
  //       margin: const EdgeInsets.all(8.0),
  //       color: Colors.transparent,
  //     ),
  //   );
  // }
}