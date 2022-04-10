import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/size_config.dart';

class ProfileContainer extends StatelessWidget {
  String fullName;
  String job;
  String workplace;
  String dateOfBirth;
  String phone;
  String email;

  ProfileContainer(
      {required this.fullName,
      required this.job,
      required this.workplace,
      required this.dateOfBirth,
      required this.phone,
      required this.email,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: getH(250),
      width: getW(380),

      decoration: BoxDecoration(
      color: UiContstants.kwidgetBackGroundColor(),

      borderRadius: BorderRadius.all(Radius.circular(getH(10)))

      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          personListTile(context),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Text(
                  "Date of birth:",
                  style:UiContstants.keyTextsStyle(context),
                ),
              ),
              Text(
                "${dateOfBirth}",
                style: UiContstants.valuetextStyles(context),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 13.0),
                child: Text(
                  "Phone number:",
                  style: UiContstants.keyTextsStyle(context),
                ),
              ),
              Text(
                "${dateOfBirth}",
                style:UiContstants.valuetextStyles(context),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Text(
                  "E-mail:",
                  style:UiContstants.keyTextsStyle(context),
                ),
              ),
              Text(
                "${dateOfBirth}",
                style: UiContstants.valuetextStyles(context),
              )
            ],
          ),
        ],
      ),
    );
  }

  ListTile personListTile(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: getH(40),
        child:SvgPicture.asset("assets/myvektor.svg")
      ),
      title: Text(
        "${fullName}",
        style: TextStyle(
            fontSize: getH(24),
            color: UiContstants.kPrimaryColorforTextAndButtons()),
      ),
      subtitle: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [Text("${job}  ",style:UiContstants.keyTextsStyle(context),),
        
          CircleAvatar(
            radius: getH(5),
            backgroundColor: Colors.white,
          ),
          Text("  "),


          Text("${      workplace }",style:UiContstants.keyTextsStyle(context),)


        
        ],
      ),
    );
  }

  
}
