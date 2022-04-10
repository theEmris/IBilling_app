import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/invocont_bloc/invocont_cubit.dart';
import 'package:yiqilma_app/bloc/invocont_bloc/invocont_state.dart';

class InvoContview extends StatelessWidget {
  const InvoContview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InvoContCubit(),
      child: BlocConsumer<InvoContCubit, InvoContState>(
          builder: (context, state) {
            return Scaffold();
          },
          listener: (context,state){}
          
          ),
    );
  }
}
