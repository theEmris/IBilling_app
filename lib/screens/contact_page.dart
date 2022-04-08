import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:myAppBars.myAppBar("Contracts"),

    body: Column(children: [

      Expanded(
        flex: 2,
        child: Container(
          color: Color(0xFF1E1E20),
        )),

      Expanded(
        flex: 1,
        child: Container(
        color: Colors.greenAccent,
      )),

      Expanded(
        flex: 7,
        child: Container(
          color: Colors.amber,
      ))

    ],),



    );
  }
}
