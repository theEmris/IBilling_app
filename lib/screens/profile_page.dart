import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:myAppBars.myAppBar("Contracts"),

      
    );
  }
}