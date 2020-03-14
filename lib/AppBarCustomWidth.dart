
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
String t;
String z;
class AppbarCustomWidth extends StatelessWidget with PreferredSizeWidget {
  AppbarCustomWidth(String title,String i){
t=title;
z=i;
  }
  everythingSynced(BuildContext context) {
    CupertinoAlertDialog d = CupertinoAlertDialog(
      content: Text("Everything is synchronized properly"),
      actions: <Widget>[
        CupertinoButton(
          child: Text("Great!"),
          onPressed: Navigator.of(context).pop,
        )
      ],
    );

    showCupertinoDialog(context: context, builder: (_) => d);
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
     preferredSize: Size.fromHeight(150),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white.withOpacity(0.25),
           child: Row(
              children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 10),),
                  Container(
                    width: MediaQuery.of(context).size.width/8,
                    alignment: Alignment.topLeft,
                   // margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.only(top:32),
                    child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
                         Navigator.pop(context);
                    },),
                  ),
                    Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top:60),
                            child: Column(
                        children: <Widget>[
                            Container(
                             // color: Colors.green,
                             // margin: EdgeInsets.only(top: 40),
                             // padding: EdgeInsets.only(top: 30),
                              child: Image.asset(z,height: 60,width: 60,)),

                               Container(
                          
                                 alignment: Alignment.center,
                margin: EdgeInsets.only(top:15),
                  child: Text(t,textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize:25,
                              letterSpacing:3.25),
                  )),
                        ],
                      ),
                          ),
                    ),
            // Container(
            //   padding: EdgeInsets.only(top: 32),
            //   alignment: Alignment.topRight,
            //   child: ValueListenableBuilder(
            //    valueListenable: syncOnGoing,
            //    builder: (context, loading, child) => loading
            //        ? Padding(
            //            padding: EdgeInsets.only(right: 14),
            //            child: CupertinoActivityIndicator(),
            //          )
            //        : ValueListenableBuilder(
            //            valueListenable: syncNotifier,
            //            builder: (context, shouldUpdate, child) => !shouldUpdate
            //                ? IconButton(
            //                    onPressed: () {
            //                      everythingSynced(context);
            //                    },
            //                    icon: Icon(
            //                      Icons.done_outline,
            //                      color: Colors.white,
            //                      size: 14,
            //                    ),
            //                  )
            //                : IconButton(
            //                    onPressed: () {
            //                    //  syncthedata(context);
            //                    },
            //                    icon: Icon(
            //                      Icons.sync,
            //                      color: Colors.white,
            //                    ),
            //                    tooltip: 'Sync',
            //                  ),
            //          ),
            //   ),
            // ),
          ],
          ),
    ),
  );
  }

  Size get preferredSize => Size.fromHeight(150.0);
}
