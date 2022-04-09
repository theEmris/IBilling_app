import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';
import 'package:yiqilma_app/widgets/myTextFormFields.dart';

class NewInwoicePage extends StatelessWidget {
 NewInwoicePage({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBars.miniAppar("new Invoice"),
      body: Column(
        children: [myTextFormField(controller: _controller)],
      ),
    );
  }
}


