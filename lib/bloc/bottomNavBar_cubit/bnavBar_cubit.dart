import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnBar_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavIntial());


   changestate(int index) {
    emit(BottomNavComplete(index: index));
  }
}


