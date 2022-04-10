import 'package:bloc/bloc.dart';
import 'package:yiqilma_app/bloc/invocont_bloc/invocont_state.dart';

class InvoContCubit extends Cubit<InvoContState> {
  InvoContCubit() : super(InvoContInitial());

  bool isContracts = true;

  changeisContracts(bool value) {
    isContracts = value;
    emit(InvoContComplete());
  }
}
