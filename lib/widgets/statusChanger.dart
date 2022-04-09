import 'package:flutter/material.dart';
import 'package:yiqilma_app/widgets/myPopUpMeu.dart';

class MyPopUpMenuButton extends StatelessWidget {
  MyPopUpMenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Theme(

        data: Theme.of(context).copyWith(
            highlightColor: Colors.white,
            splashColor: Colors.white,
            hoverColor: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            showCursor: false,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                suffixIcon: myPopUpMenu(),
                enabledBorder: myEnabledBorderDeco(),
                border: thisborder()),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder myEnabledBorderDeco() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  OutlineInputBorder thisborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(color: Colors.white, width: 10));
  }
}
