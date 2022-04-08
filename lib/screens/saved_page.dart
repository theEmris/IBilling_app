import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold 
    (
     appBar:myAppBars.myAppBar("Contracts"),
      
    );
  }
}