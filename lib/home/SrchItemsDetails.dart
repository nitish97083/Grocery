import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/SearchForProduct.dart';

import 'pojo/SearchedItems.dart';


class SearchItemDetails extends StatefulWidget {
  SearchItemDetails(this.index, this.items);
  final index;
  final List<Datum> items;
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchItemDetails();
  }
}

class _SearchItemDetails extends State<SearchItemDetails> {
  @override
  Widget build(BuildContext context) {
    String ss = " ";
    if (widget.items[widget.index].description != null) {
      ss = widget.items[widget.index].description;
    }
    var withd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
        bottomSheet: Container(
          child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                width: withd,
                height: withd / 6,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
              Container(
                  color: Colors.red,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back), onPressed: () {
                        print("Back to main page");
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchForProduct()));
                      },
                      iconSize:40,
                      color: Colors.black,
                      )),
              Material(
                child: Image.network(
                  widget.items[widget.index].imageUrl,
                  width: withd,
                  height: withd,
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.items[widget.index].nameInEng,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              widget.items[widget.index].nameInHin,
                              style: TextStyle(fontSize: 22)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: withd / 1.2,
                      top: withd / 29,
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.green,
                            child: Text(
                              widget.items[widget.index].mrp + " ₹",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Text(
                              widget.items[widget.index].price + " ₹",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  ss,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                width: withd,
                height: withd,
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        ));
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
