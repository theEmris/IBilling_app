import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:myAppBars.myAppBar("Contracts"),

    body: Column(children: [

      Expanded(
        flex: 2,
        child: Container(
          color: Color(0xFF1E1E20),

child:CalendarAgenda(
    backgroundColor: Colors.transparent,
    selectedDateColor:Color(0xFF00A795),
    dateColor: Color(0xFFD1D1D1),
    initialDate: DateTime.now(),
    firstDate: DateTime.now().subtract(Duration(days: 140)),
    lastDate: DateTime.now().add(Duration(days: 4)),
    onDateSelected: (date) {
    print(date);
},
)



        )),

      Expanded(
        flex: 1,
        child:  TabBar(
        tabs: [
          Tab(icon: Icon(Icons.flight)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_car)),
        ],
        
      ),

      ),
      Expanded(
        flex: 7,
        child: Container(
          color: Colors.amber,
          child: TabBarView(children: [
            Icon(Icons.flight, size: 350),
        Icon(Icons.directions_transit, size: 350),
        Icon(Icons.directions_car, size: 350),
          ]),
      ))

    ],),



    );
  }
}
