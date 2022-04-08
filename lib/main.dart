import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/components/bottomNavBar.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: UiContstants.kPrimarycolor(),
        
      ),
      home: MyStatefulWidget(),
    );



  }
}

