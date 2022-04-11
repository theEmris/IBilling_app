import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/service/contractService.dart';
import 'package:yiqilma_app/size_config.dart';
import 'package:yiqilma_app/widgets/buttons/saveButton.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';
import 'package:yiqilma_app/widgets/statusChanger.dart';
import 'package:yiqilma_app/widgets/myTextFormFields.dart';

class new_Contracts_page extends StatelessWidget {
  new_Contracts_page({Key? key}) : super(key: key);
  TextEditingController _controller0 = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBars.miniAppar("new Contracts"),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "person",
                style: TextStyle(color: UiContstants.kTextColor()),
              ),
            ),
            myTextFormField(controller: _controller0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Fisher's full name",
                  style: TextStyle(color: UiContstants.kTextColor())),
            ),
            myTextFormField(controller: _controller1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Address of the Organization",
                  style: TextStyle(color: UiContstants.kTextColor())),
            ),
            myTextFormField(controller: _controller2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("INN",
                  style: TextStyle(color: UiContstants.kTextColor())),
            ),
            myTextFormField(controller: _controller3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Status of the contract",
                  style: TextStyle(color: UiContstants.kTextColor())),
            ),
            MyPopUpMenuButton(
              thisController: _controller4,
            ),
            InkWell(
              onTap: () async {
                await contractService
                    .addContract(
                        person: _controller0.text,
                        fullName: _controller1.text,
                        location: _controller2.text,
                        inn: _controller3.text,
                        status: _controller4.text,
                        createTime: DateTime.now())
                    .then((value) {
                  _controller0.clear();
                  _controller1.clear();
                  _controller2.clear();
                  _controller3.clear();
                  _controller4.clear();

                  print("maybe saved");
                });
              },
              child: saverButton(
                title: 'Save contract',
              ),
            )
          ],
        ),
      ]),
    );
  }
}
