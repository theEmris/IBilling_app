import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/components/cardOfHomePage.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:myAppBars.myAppBar(context, "History"),
         body:  Container(child: ListView.builder(itemBuilder: (_, __) {
                
                  return CardOfHomePage(
                    fullName: "Yoldoshiva Ziyoda ",
                    amount: "1,200,000",
                    lastinvo: "156",
                    status: "Paid",
                    numinvo: "154",
                    time: "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                    number: "6",
                  );
                
              },itemCount: 10,)),

      
    );
  }
}