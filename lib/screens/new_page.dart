import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/appBar.dart';

class NewPage extends StatelessWidget {
  const NewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:WidgetAppBar.myAppBar("Contracts"),

      
    );
  }
}