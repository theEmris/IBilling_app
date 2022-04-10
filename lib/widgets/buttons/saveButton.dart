import 'package:flutter/material.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/size_config.dart';

class saverButton extends StatelessWidget {
  String title;
  saverButton({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
          alignment: Alignment.center,
          height: getH(44),
          width: getW(343),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: UiContstants.kPrimaryColorforTextAndButtons()),
          child: Text(
            title,
            style: UiContstants.keyTextsStyle(context),
          )),
    );
  }
}
