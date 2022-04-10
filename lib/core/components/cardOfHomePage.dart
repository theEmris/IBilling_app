import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/size_config.dart';

class CardOfHomePage extends StatelessWidget {
  String fullName;
  String amount;
  String lastinvo;
  String status;
  String numinvo;
  String time;
  String number;


  CardOfHomePage(
      {required this.fullName,
      required this.amount,
      required this.lastinvo,
      required this.status,
      required this.numinvo,
      required this.time,
      required this.number,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: getH(200),
        width: getW(343),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: UiContstants.kwidgetBackGroundColor()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            header(context),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Text(
                    "Fish:",
                    style: UiContstants.keyTextsStyle(context),
                  ),
                ),
                Text(
                  "${fullName}",
                  style: UiContstants.valuetextStyles(context),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Text(
                    "Amount",
                    style: UiContstants.keyTextsStyle(context),
                  ),
                ),
                Text(
                  "${amount} UZS",
                  style: UiContstants.valuetextStyles(context),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Text(
                    "Last invoice:",
                    style: UiContstants.keyTextsStyle(context),
                  ),
                ),
                Text(
                  "${lastinvo}",
                  style: UiContstants.valuetextStyles(context),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Text(
                        "Number of invoices:",
                        style: UiContstants.keyTextsStyle(context),
                      ),
                    ),
                    Text(
                      "${numinvo}",
                      style: UiContstants.valuetextStyles(context),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "$time",
                    style: UiContstants.valuetextStyles(context),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Row header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SvgPicture.asset(
                "assets/Paper.svg",
              ),
            ),
            Text(
              "№ ${number}",
              style: UiContstants.keyTextsStyle(context),
            )
          ],
        ),
        Status()
      ],
    );
  }

  Padding Status() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Chip(
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("paid",style: TextStyle(
              color: Color(0xFF49B7A5,),fontSize: 17
            ),),
          ),
          
          backgroundColor: Color.fromRGBO(73, 183, 165, 0.4),
        ));
    
  }
}
