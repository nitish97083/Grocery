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
          // padding: EdgeInsets.all(10),
           height: MediaQuery.of(context).size.height,
            child: Column(
            children: <Widget>[
                   Container(
                     height:MediaQuery.of(context).size.height/5,
                     child: ListView.builder(
              itemBuilder: (BuildContext context,int index){
                     return Container(
                       child: Image.asset("assets/homepageslider/edu.png",width: MediaQuery.of(context).size.width/1),
                     );
              },
              itemCount:3,
              scrollDirection:Axis.horizontal,
            ),
                   ),
            Container(
              margin: EdgeInsets.only(top: 20),
              //color: Colors.red,
              height:MediaQuery.of(context).size.height/2,
              child: GridView.builder(
                itemCount:12,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:4),
                itemBuilder: (BuildContext context,int index){
                        return GestureDetector(child:Card(
                          child: Container(
                            child: Text("data"),
                          ),
                        ));
                },
              ),
            ),
            SizedBox(height: 20,)
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