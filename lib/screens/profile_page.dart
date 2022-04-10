import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/core/components/profileContainer.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/size_config.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
          appBar:myAppBars.myAppBar(context, "Profile"),


          body: Column(
            children: [
              mainPerson(),


              Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: UiContstants.kwidgetBackGroundColor(),
              child: ListTile(
                title: Text(
                  "English",
                  style: TextStyle(
                    color: Color(0xFFE7E7E7), fontSize: getH(20)
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                  },
                  icon: SvgPicture.asset("assets/usa.svg",
                  height: 100,),
                  ),
                ),
              ),
            ),
          

                




                


            ],
          ),

      
    );
  }

  ProfileContainer mainPerson() {
    return ProfileContainer(fullName: "Otabek Abdusamatov",
             job: "Grafic designer",
            workplace:"IQ Education",
             dateOfBirth: "16.09.2001",
              phone: "+998 97 721 06 88", 
              
              email: "predactorhunter041@gmail.com"
              
              );
  }
}