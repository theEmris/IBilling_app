import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';

class FilterCheckBox extends StatelessWidget {
  late BuildContext  thiscontext;
  final String text;
  final thisvalue;
  final funtion;
  FilterCheckBox(
      {required this.text,
      required this.thisvalue,
      required this.funtion,
      required thiscontext,
      Key? key})
      : super(key: key);

  @override
  Widget build(thiscontext) {
    return Row(
      children: [
        Checkbox(
          value: thisvalue,
          onChanged: (v) {
            return funtion;
          },
          side: BorderSide(color: Colors.white),
        ),
        Text(
          "$text",
          style: UiContstants.valuetextStyles(thiscontext),
        )
      ],
    );
  }
}
