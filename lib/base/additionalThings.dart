import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/components/cardOfHomePage.dart';

class HechIlojiBulmasa extends StatelessWidget {
  const HechIlojiBulmasa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 8,
        child: Container(
            child: ListView.builder(
          itemBuilder: (_, __) {
            if (__ == 0) {
              return SizedBox(
                height: 50,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "contracts",
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Invoice",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))
                  ],
                ),
              );
            } else {
              return CardOfHomePage(
                fullName: "Yoldoshiva Ziyoda ",
                amount: "1,200,000",
                lastinvo: "156",
                status: "Paid",
                numinvo: "154",
                time:
                    "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                number: "6",
              );
            }
          },
          itemCount: 10,
        )));
  
    }
}