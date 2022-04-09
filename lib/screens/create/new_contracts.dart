import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';
import 'package:yiqilma_app/widgets/statusChanger.dart';
import 'package:yiqilma_app/widgets/myTextFormFields.dart';

class new_Contracts_page  extends StatelessWidget {
 new_Contracts_page ({Key? key}) : super(key: key);
  TextEditingController _controller0 = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2= TextEditingController();
  TextEditingController _controller3= TextEditingController();
 
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBars.miniAppar("new Contracts"),
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            
            Text("person",style: TextStyle(color: UiContstants.kTextColor()),),
            myTextFormField(controller: _controller0),
            Text("Fisher's full name",style: TextStyle(color: UiContstants.kTextColor())),
            
            myTextFormField(controller: _controller1),
            Text("Address of the Organization",style: TextStyle(color: UiContstants.kTextColor())),
            myTextFormField(controller: _controller2),
            Text("INN",style: TextStyle(color: UiContstants.kTextColor())),
            myTextFormField(controller: _controller3),
      
            Text("Status of the contract",style: TextStyle(color: UiContstants.kTextColor())),
             
            MyPopUpMenuButton()          
            
            
            
            
            ],
      
            
      
        ),
        ]
      ),
    );
  }
}


