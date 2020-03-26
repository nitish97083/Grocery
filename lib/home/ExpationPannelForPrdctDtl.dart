import 'package:flutter/material.dart';
import 'package:radhe_radhe/home/pojo/ExpantionPanneldetailsPojo.dart';

class ExpantionPannelDetails extends StatefulWidget {
  @override
  _ExpantionPannelDetailsState createState() => _ExpantionPannelDetailsState();
}

class _ExpantionPannelDetailsState extends State<ExpantionPannelDetails> {
  @override
  Widget build(BuildContext context) {
   var withd = MediaQuery.of(context).size.width;
    return  Container(
      //  height: MediaQuery.of(context).size.height/2,
        child: ListView.builder(
          itemCount: prepareData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(microseconds: 200),
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.only(left: 5,right: 5),
                          width:withd ,

                          child: Text(
                            'PRICE: ${prepareData[index].bodyModel.details}',maxLines: 5,
                            style: TextStyle(
                              
                              fontSize: 15,
                            ),
                          ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        prepareData[index].header,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: prepareData[index].isExpanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  prepareData[index].isExpanded =
                      !prepareData[index].isExpanded;
                });
              },
            );
          },
        ),
    );

  }
}



// //***************************************Api data */

List<ExpPlProductDetails> prepareData = <ExpPlProductDetails>[
    ExpPlProductDetails(header: 'Offer', bodyModel: BodyModel(details: 'Free 1kg - Brand Offer')),
    ExpPlProductDetails(header: 'Disclaimer', bodyModel: BodyModel(details:'Every effort is maintain accuracy of all information' )),
   // ExpPlProductDetails(header: '', bodyModel: BodyModel()),
   // ExpPlProductDetails(header: 'Cup', bodyModel: BodyModel())
  ];