import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnBar_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavIntial());

  int initial = 0;
  changestate(int index) {
    initial = index;
    emit(BottomNavComplete());
  }

  bool isContracts = true;

  changeisContracts(v) {
    isContracts = v;
    emit(BottomNavComplete());
  }

  int theday = DateTime.now().day;

  changetheDay(int v) {
    theday = v;
    emit(BottomNavComplete());
  }
}
