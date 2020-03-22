import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/material.dart';
import 'package:radhe_radhe/AppBarCustomWidth.dart';
import 'package:radhe_radhe/home/CustomProperties.dart';

class SelectAddress extends StatefulWidget {
  @override
  SelectAddressState createState() {
    return SelectAddressState();
  }
}

class SelectAddressState extends State<SelectAddress> {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Center(child: myTextWidget(text: 'Full Address')),
                myTextWidget(text: 'Full Name'),
                textFormField(context),
                myTextWidget(text: 'Address Line 1'),
                textFormField(context),
                myTextWidget(text: 'Address Line 2'),
                textFormField(context),
                myTextWidget(text: 'Pin Code'),
                textFormField(context),
                myTextWidget(text: 'Distict'),
                textFormField(context),
                myTextWidget(text: 'Phone Number'),
                textFormField(context),
                myTextWidget(text: 'Alternate Phone Number'),
                textFormField(context),
                submitAddress(context, _formKey),
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
        child: Text(text),
      ),
    ],
  );
}

Widget textFormField(context) {
  return Container(
    height: MediaQuery.of(context).size.height / 22,
    padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
    child: TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return "Please Enter Full Name";
        }
      },
    ),
  );
}

Widget submitAddress(context, GlobalKey<FormState> _formkey) {
  return  Container(
      height:MediaQuery.of(context).size.height/20,
      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
      color: Colors.grey.withOpacity(0.3),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: InkWell(child: Text('Save'),
       onTap: () {
      // Validate will return true if the form is valid, or false if
      //   // the form is invalid.
      if (_formkey.currentState.validate()) {
        // If the form is valid, we want to show a Snackbar
        Scaffold.of(context)
            .showSnackBar(SnackBar(
              content: Text('Processing Data'),
            ))
            .closed
            .then((SnackBarClosedReason reason) {
          //  _opennewpage();
        });
      }
    },
    focusColor: Colors.red,
      ),
   
   
  );
}
