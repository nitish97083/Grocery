import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:radhe_radhe/home/CustomProperties.dart';
import 'package:radhe_radhe/home/TextStyleProper.dart';

class SelectAddress extends StatefulWidget {


  @override
  _SelectAddressState createState() {
    return _SelectAddressState();
  }
}



List<dynamic> list = [];

Map<String,dynamic> map1 = {};
 
String url = "https://onlinekiranabazar.000webhostapp.com/api/address/add/12";

  Future registerAddress(Map map2) async {
    var response = await http.post(url, body: map2);
    // print("Response of body ${response.body}");
    if (response.statusCode == 200) {
      
      if (response.body != null) {
       
        var data = jsonDecode(response.body);
        var success = data['success'];
        var message = data['message'];
        if (success==true) {
         Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT);
        }
      }
      // Fluttertoast.showToast(
      //     msg: response.body,
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIos: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: 'something went wrong',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

class _SelectAddressState extends State<SelectAddress> {
  final _formKey = GlobalKey<FormState>();
final  FocusNode _nameFocus = FocusNode();
final FocusNode _add1Focus = FocusNode();
final FocusNode _add2Focus = FocusNode();
final  FocusNode _pinFocus = FocusNode();
final FocusNode _distFocus = FocusNode();
final  FocusNode _contFocus = FocusNode();
final  FocusNode _altconFocus = FocusNode();
TextEditingController _nameCont = TextEditingController();
TextEditingController _add1Cont = TextEditingController();
TextEditingController _add2Cont = TextEditingController();
TextEditingController _pinCont = TextEditingController();
TextEditingController _contactCont = TextEditingController();
TextEditingController _alterCont = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColors,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Center(child: myTextWidget(text: 'Full Address')),
                // myTextWidget(text: 'Full Name'),
                // textFormField(context, "Please Enter Full Name", 0,k: TextInputType.text,current: _nameFocus,next:
                //  _add1Focus,hintText:'Nitish Kumar Verma',controller: _nameCont,initialVal: 'name'),
                myTextWidget(text: 'Address Line 1'),
                textFormField(context, 'Please Enter Address',1,k:TextInputType.text,current: _add1Focus,next: _add2Focus,
                hintText: 'Village/Ward.....' ,controller: _add1Cont),
                myTextWidget(text: 'Address Line 2'),
                textFormField(context, 'Please Enter Address',2,k: TextInputType.text,current: _add2Focus,next: _pinFocus,
                hintText: 'Near by/LandMark',controller: _add2Cont),
                // myTextWidget(text: 'Pin Code'),
                // textFormField(context, 'Please Enter PinCode',3,k: TextInputType.number,current: _pinFocus,next:
                //  _contFocus,pinLent: 6,hintText: 'Pincode/833201',controller: _pinCont),
                // // myTextWidget(text: 'Distict'),
                // // textFormField(context, 'Please Enter Distict name',k: TextInputType.text,current: _distFocus,next: _contFocus),
                // myTextWidget(text: 'Phone Number', ),
                // textFormField(context, 'Please Enter Contact Number',4,k:TextInputType.number,current:
                //  _contFocus,next: _altconFocus,pinLent: 13,hintText: '+918986567023',controller: _contactCont),
                // myTextWidget(text: 'Alternate Phone Number'),
                // textFormField(context, null,5,k: TextInputType.number,pinLent: 13,hintText: '+918787554223',controller: _alterCont),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 20,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    color: Colors.grey.withOpacity(0.3),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text('Save'),
                  ),
                  onTap: () {
                    // Validate will return true if the form is valid, or false if
                    //   // the form is invalid.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, we want to show a Snackbar
                      //final snackbar = Scaffold.of(context)
                      //     .showSnackBar(SnackBar(
                      //       content: Text('Processing Data'),
                      //     ))
                      //     .closed
                      //     .then((SnackBarClosedReason reason) {
                      //   //  _opennewpage();
                      // });
                      _displaySnackBar(context);
                    }
                  },
                ),
                // else if(!isNumeric(value))
                // {
                //   return 'Please enter a valid Phone number';
                // }
                //    Container(
                //      height:30,
                //       child: myTextField("title",initialValue:null,validators:
                //  [
                //   FormBuilderValidators.required()
                // ], label: "title",
                // ),
                //    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Processing Data'),
      backgroundColor: CustomColors.primaryColors,
    );
    _scaffoldKey.currentState
        .showSnackBar(snackBar)
        .closed
        .then((SnackBarClosedReason reason) {
          list.forEach((v)=>print(v.toString()));
        map1 = {'locality':list[0],'landmark':list[1],'addressType':'primary'};
       // map1.forEach((k,v)=>print(" Value of map$v"));
       registerAddress(map1);
       print(map1);
        list.clear();
         print("Clear List $list");
        Navigator.pop(context);
        
    });
  }
}

// void _opennewpage() {
//     Navigator.of(context).push(
//       new MaterialPageRoute<void>(
//         builder: (BuildContext context) {
//           return new Scaffold(
//         appBar: new AppBar(
//           title: new Text('Success'),
//         ),
//         body: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//              Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),
//                         child: Column(children: <Widget>[
//                          Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),
//                             child:  FlutterLogo( size: 70.0,),
//                          ),
//                                 Text('You have Successfully Signed with Flutter',
//                                  textAlign: TextAlign.center,
//                                  overflow: TextOverflow.ellipsis,
//                                  style: new TextStyle(fontWeight: FontWeight.w300),
//                                  ),

//                   ],
//                 ),
//             ),
//             ],
//           ),
//         ),
//       );
//         },
//       ),
//     );
//   }
// }

bool isNumeric(String s) {
  try {
    return double.parse(s) != null;
  } catch (e) {
    return false;
  }
}

//***************************************************************************88 */

Widget myTextField(String title,
    {@required String label,
    TextInputType k: TextInputType.text,
    icon: Icons.crop_square,
    int maxLines: 1,
    String initialValue,
    validators,
    empty: 0}) {
  title = title.replaceAll(" ", "");
  if (initialValue == "null") initialValue = "4556632";
  return Container(
    color: Colors.red,
  );
}

Widget myTextWidget({String text}) {
  return Row(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
        child: Text(text,style: textStyle1),
      ),
    ],
  );
}

Widget textFormField(context, String validators,int numb,{TextInputType k,FocusNode current,FocusNode next,var pinLent,String initialVal
 ,hintText,TextEditingController controller}) {
 if (initialVal == "null") initialVal = '123';
  return Container(
    height: MediaQuery.of(context).size.height / 15,
    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    child: TextFormField(
      decoration: const InputDecoration(
   
    counter:SizedBox(
      height: 0.0,
    )
    ),
      keyboardType: k,
     
      focusNode: current,
     initialValue:initialVal=='null'? controller:initialVal,style: textStyle1,
      maxLength: pinLent,
      validator: validators == null
          ? null
          : (value) {
              if (value.isEmpty) {
                return validators;
              }
            },
           onFieldSubmitted: (val,){
              list.add(val);
             _fieldFocusChange(context,current,next);
           },
    ),
  );
}
_fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
}

//***************************************8 */
// Widget submitAddress(context, GlobalKey<FormState> _formkey,GlobalKey<ScaffoldState> _scaffold) {
//   return
// }
