import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectClass extends StatefulWidget {
  ShimmerEffectClass({Key key}) : super(key: key);

  @override
  _ShimmerEffectClassState createState() => _ShimmerEffectClassState();
}

class _ShimmerEffectClassState extends State<ShimmerEffectClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Shimmer.fromColors(
                direction: ShimmerDirection.ltr,
                period: Duration(seconds:4),
                child: Column(
                  children: [0, 1, 2, 3]
                      .map((_) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  width:MediaQuery.of(context).size.width,height:70,
                                  color: Colors.white,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 8.0,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 8.0,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2.0),
                                          ),
                                          Container(
                                            width: 40.0,
                                            height: 8.0,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
                baseColor: Colors.grey[700],
                highlightColor: Colors.grey[100]),
          )),
    );
  }
}
