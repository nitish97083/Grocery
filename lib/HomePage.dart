import 'package:flutter/material.dart';
import 'package:radhe_radhe/utils/BaseAppbar.dart';
import 'package:radhe_radhe/utils/CategoryGrid.dart';
import 'package:radhe_radhe/utils/HomepageSlider.dart';


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
    
          appBar: BaseAppBar(
              appBar: AppBar(),
              widgets: <Widget>[Icon(Icons.more_vert)],
            ),
    
           body: SingleChildScrollView(
             child: Container(
              // padding: EdgeInsets.all(10),
               height: MediaQuery.of(context).size.height,
                child: Column(
                children: <Widget>[
                       HomepageSlider.getSlider(context,3,["assets/homepageslider/edu.png","assets/homepageslider/edu.png","assets/homepageslider/edu.png"]),
                   
            CategoryGrid.getCategoryGrid(context,[],[]),
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