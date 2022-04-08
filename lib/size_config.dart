import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double getH(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // 812.0 designer ishlatgan height
  return (inputHeight / 815) * screenHeight;
}

double getW(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // 375.0 designer ishlatgan width
  return (inputWidth / 375) * screenWidth;
}

class MySizedConfig {
  static  double getHight(BuildContext context, double inputwidth) {
    return (inputwidth / 896) * MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context, double inputwidth) {
    return (inputwidth / 896) * MediaQuery.of(context).size.width;
  }
}
