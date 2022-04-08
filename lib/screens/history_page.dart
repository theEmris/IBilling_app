import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/appBar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:WidgetAppBar.myAppBar("Contracts"),

      
    );
  }
}