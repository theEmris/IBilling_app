import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/newPage_cubit.dart/new_page_state.dart';

class NewPageCubit extends Cubit<NewPageState> {
  NewPageCubit() : super(NewPageInitial());

  bool currentPage = true;

  changePage(bool s) {
    try {
      currentPage = s;
      emit(NewPageComplete());
    } catch (e) {
      emit(ErrorNewPage(e.toString()));
    }
  }
}
