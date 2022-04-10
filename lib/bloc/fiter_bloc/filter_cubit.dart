import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/fiter_bloc/filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  bool statusPaid = true;

  changeStatusPaid(v) {
    statusPaid = v;
    emit(FilterComplete());
  }

  bool statusIQ = false;
  changeStatusIQ(v) {
    statusIQ = v;
    emit(FilterComplete());
  }

  bool statusProgress = true;

  changeStatusProgress(v) {
    statusProgress = v;
    emit(FilterComplete());
  }

  bool statusPyme = false;
  changeStatusPyme(v) {
    statusPyme = v;
    emit(FilterComplete());
  }

  DateTime firstDate = DateTime.now();

  chaneFirstDate(v) async {
    firstDate = await v;
    emit(FilterComplete());
  }
DateTime secondDate = DateTime.now();

  changesecondDate(v) async {
    secondDate = await v;
    emit(FilterComplete());
  }






}
