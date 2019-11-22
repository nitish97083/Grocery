import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:radhe_radhe/CustomPageBuilder.dart';
import 'package:radhe_radhe/ShimmarEffectClass.dart';
import 'package:radhe_radhe/utils/BaseAppbar.dart';

class ObjectContainer extends StatefulWidget {
  @override
  _ObjectContainerState createState() => _ObjectContainerState();
}

bool loading = true;
var height;

class _ObjectContainerState extends State<ObjectContainer> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        loading = false;
      });
    });
  }
    static var count=0;
    var change=0;
  TextStyle st = TextStyle(color: Colors.black,fontSize:25);
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.height;
    var y = MediaQuery.of(context).size.width;
    print("Home Page Called");
    return Scaffold(
      endDrawer: Drawer(),
      appBar: BaseAppBar(
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: loading
          ? ShimmerEffectClass()
          : SingleChildScrollView(
              child: Container(
              padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      text("Categories"),
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        child:prefix0.ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: Container(
                                 // height: x / 3,
                                  width: y / 2,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/homepageslider/edu.png",
                                          ),
                                          fit: BoxFit.fill)),
                                  child:Column(
                                    children: <Widget>[
                                      Container(
                                        height: x/8,
                                        color: Colors.transparent
                                      ),
                                      Container(
                                        color: Colors.white.withOpacity(0.7),
                                        height: x/15.3,
                                        alignment: Alignment.topLeft,
                                        padding: EdgeInsets.only(left: 5),
                                       child: Text("Rice",style:TextStyle(
                                         fontSize:30,color: Colors.black
                                       )),
                                      ),
                                    ],
                                  )
                                ),
                              );
                            }),
                      ),
                      text("Recommended"),
                      Container(
                        //color: Colors.red,
                        height: x/2,
                        child: CustomGridView.builder(
                          itemBuilder: (BuildContext context,int index){
                            return Card(
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset("assets/ANS.png"),
                                    ),
                                    Container(
                                      width: y,
                                      height:x/8.48,
                                      color: Colors.red[300],
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text("Basmati Rice",style: st,)),
                                          Container(
                                            child: Text("I think you are right but not !!!"),
                                          ),
                                            count==0 ? Container(
                                              margin: EdgeInsets.only(top:10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.only(left:10),
                                                  child: Text("25r/kg")),
                                                Container(
                                                  margin: EdgeInsets.only(left:30,right: 5),
                                                  decoration: BoxDecoration(
                                                       color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  width:y/4,
                                                  height:x/24,
                                                  child:InkWell(
                                                      onTap: (){
                                                      setState(() {
                                                        count++;
                                                      });
                                                      },
                                                      child: Container(
                                                     alignment: Alignment.center,
                                                    child:
                                                       Text("Add"),
                                                    ),
                                                  )
                                                )
                                              ],
                                            ),
                                          )
                                            : Container(
                                              padding: EdgeInsets.only(top: 10,bottom:2),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.only(left:5,right:25),
                                                  child: Text("25r/kg")
                                                  ),
                                                Container(
                                                  height:x/24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15)
                                                  ),
                                                 
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        onPressed: (){
                                                          setState(() {
                                                            count--;
                                                            print("Counter after Decrement :$count");
                                                          });
                                                        },
                                                        icon: Icon(Icons.minimize),
                                                      ),
                                                      Text(count.toString()),
                                                      IconButton(
                                                        onPressed: (){
                                                       
                                                        setState(() {
                                                          count++;
                                                          print(" number of after Increment:$count");
                                                        });
                                                        },
                                                        icon: Icon(Icons.add ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                              );
                          },
                          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing:15
                          ),
                        //  scrollDirection: Axis.horizontal,
                          itemCount:12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget text(String text) {
   return Container(
     alignment: Alignment.topLeft,
     padding: EdgeInsets.only(left:0),
      margin: EdgeInsets.only(top: 15, bottom: 15),
      child: Text(
        text,
        style:TextStyle(color: Colors.black,fontSize: 18,)
      ),
    );
  }
  int counterIncrement(){
   // var count=0;
    print("In CounterIncrement method");
    return count++;

  }
}
