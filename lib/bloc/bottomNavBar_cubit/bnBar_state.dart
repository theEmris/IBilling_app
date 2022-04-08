import 'package:flutter_svg/avd.dart';

abstract class BottomNavState {
  BottomNavState();
}

class BottomNavIntial extends BottomNavState {
  BottomNavIntial();
}

class BottomNavLoading extends BottomNavState {
  BottomNavLoading();
}

class BottomNavComplete extends BottomNavState {
  int index;

  BottomNavComplete({required this.index});

}
