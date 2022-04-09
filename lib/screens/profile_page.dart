import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/components/profileContainer.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:myAppBars.myAppBar("Profile"),


          body: Column(
            children: [
              ProfileContainer(fullName: "Otabek Abdusamatov",
               job: "Grafic designer",
              workplace:"IQ Education",
               dateOfBirth: "16.09.2001",
                phone: "+998 97 721 06 88", 
                
                email: "predactorhunter041@gmail.com"
                
                ),

                
                



                


            ],
          ),

      
    );
  }
}