import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiqilma_app/bloc/fiter_bloc/filter_cubit.dart';
import 'package:yiqilma_app/bloc/fiter_bloc/filter_state.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FilterCubit(),
      child: BlocConsumer<FilterCubit, FilterState>(
        listener: ((context, state) {}),
        builder: (context, state) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Status",
                  style: UiContstants.valuetextStyles(context),
                ),
                Row(
                  children: [
                    changer(context)
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Row changer(BuildContext context) {
    return Row(
                    children: [
                      Checkbox(
                        value: context.watch<FilterCubit>().statusPaid,
                        onChanged: (v) {
                          return context
                              .read<FilterCubit>()
                              .changeStatusPaid();
                        },
                        side: BorderSide(color: Colors.white),
                      ),
                      Text(
                        "Paid",
                        style: UiContstants.valuetextStyles(context),
                      )
                    ],
                  );
  }
}
