import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/newPage_cubit.dart/new_page_cubit.dart';
import 'package:yiqilma_app/bloc/newPage_cubit.dart/new_page_state.dart';
import 'package:yiqilma_app/screens/create/new_contracts.dart';
import 'package:yiqilma_app/screens/create/new_invoice.dart';
import 'package:yiqilma_app/screens/new_page.dart';

class new_page_view extends StatelessWidget {
  const new_page_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => NewPageCubit(),
        child: Scaffold(
          body: BlocConsumer<NewPageCubit, NewPageState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is NewPageInitial) {
                  return Center(
                    child: NewPage(),
                  );
                } else if (state is NewPageComplete) {
                  return context.watch<NewPageCubit>().currentPage == true
                      ? new_Contracts_page()
                      : NewInwoicePage();
                } else {
                  return Center(
                      child: Text(
                          (state as ErrorNewPage).errorMessage.toString()));
                }
              }),
        ));
  }
}
