import 'package:flutter/cupertino.dart';
import 'package:yiqilma_app/size_config.dart';

class UiContstants {
  static kPrimarycolor() {
    return Color(0xFF000000);
  }

  static kPrimaryColorforTextAndButtons() {
    return Color(0xFF00A795);
  }

  static kTextColor() {
    return Color(0xFFF1F1F1);
  }

  static kwidgetBackGroundColor() {
    return Color(0xFF2A2A2D);
  }

  static TextStyle valuetextStyles(BuildContext context) {
    SizeConfig().init(context);
    return TextStyle(color: Color(0xFF999999), fontSize: getH(20));
  }

  static TextStyle keyTextsStyle(BuildContext context) {
    SizeConfig().init(context);

    return TextStyle(color: Color(0xFFE7E7E7), fontSize: getH(20));
  }
}
