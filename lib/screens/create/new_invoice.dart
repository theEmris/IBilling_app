import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/service/invoiceService.dart';
import 'package:yiqilma_app/widgets/buttons/saveButton.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';
import 'package:yiqilma_app/widgets/statusChanger.dart';
import 'package:yiqilma_app/widgets/myTextFormFields.dart';

class NewInwoicePage extends StatelessWidget {
  NewInwoicePage({Key? key}) : super(key: key);
  TextEditingController _controller0 = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBars.miniAppar("new Invoice"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Xizmat nomi",
            style: TextStyle(color: UiContstants.kTextColor()),
          ),
          myTextFormField(controller: _controller0),
          Text("Invoice Summasi",
              style: TextStyle(color: UiContstants.kTextColor())),
          myTextFormField(controller: _controller1),
          Text("Status of the invoice",
              style: TextStyle(color: UiContstants.kTextColor())),
          MyPopUpMenuButton(thisController: _controller2),
          InkWell(
              child: saverButton(title: "Save Invoice"),
              onTap: () async {
                await InvoiceService.addInvoice(
                    nameofService: _controller0.text,
                    summofinvoice: _controller1.text,
                    status: _controller2.text);

                _controller0.clear();
                _controller1.clear();
                _controller2.clear();
              }),
        ],
      ),
    );
  }
}
