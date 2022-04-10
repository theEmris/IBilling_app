import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/components/cardOfHomePage.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBars.myAppBar(context, "Contracts"),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  color: Color(0xFF1E1E20),
                  child: CalendarAgenda(
                    backgroundColor: Colors.transparent,
                    selectedDateColor: Color(0xFF00A795),
                    dateColor: Color(0xFFD1D1D1),
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(Duration(days: 140)),
                    lastDate: DateTime.now().add(Duration(days: 4)),
                    onDateSelected: (date) {
                      print(date);
                    },
                  ))),
          Expanded(
              flex: 8,
              child: Container(child: ListView.builder(itemBuilder: (_, __) {
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                    time: "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                    number: "6",
                  );
                }
              },itemCount: 10,)))
        ],
      ),
    );
  }
}
