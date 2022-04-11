import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yiqilma_app/bloc/fiter_bloc/filter_cubit.dart';
import 'package:yiqilma_app/bloc/fiter_bloc/filter_state.dart';
import 'package:yiqilma_app/core/components/cardOfHomePage.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:yiqilma_app/size_config.dart';

import '../../hive/contractsBox.dart';
import '../../model/forContracts/contractsModel.dart';

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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            body: Column(children: [

              Expanded(
                flex: 5,
                
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Status",
                  style: UiContstants.valuetextStyles(context),
                ),
                FirstRow(context),
                secondRow(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Text(
                  "Date",
                  style: UiContstants.valuetextStyles(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "From",
                      style: UiContstants.valuetextStyles(context),
                    ),
                    initialDate(context),
                    SvgPicture.asset("assets/line2.svg"),
                    Text(
                      "To",
                      style: UiContstants.valuetextStyles(context),
                    ),
                    lastData(context),
                  ],
                )
              ],
            ),),


            Expanded(
              
              flex: 7,
              child: Container(


              height: MediaQuery.of(context).size.height * 0.7,
                      child:  ValueListenableBuilder<Box<NewContractModel>>(
                              valueListenable:
                                  ContractBoxes.getContracts().listenable(),
                              builder: (context, box, _) {
                                final contracts = box.values
                                    .toList()
                                    .cast<NewContractModel>();
                                return buildContet(contracts, context);
                              },
                            )
            ))





            ],)
          );
        },
      ),
    );
  }

Widget buildContet(List<NewContractModel> contracts, BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: contracts.length,
            itemBuilder: (context, index) {
              if (true) {
                if (context.watch<FilterCubit>().statusPaid) {
                  return CardOfHomePage(
                    fullName: contracts[index].fullName.toString(),
                    amount: contracts[index].inn.toString(),
                    lastinvo: index > 2 ? "${index - 1}" : "${index}",
                    status: contracts[index].status.toString(),
                    numinvo: "${contracts.length}",
                    time:
                        "${contracts[index].createdata!.day}.${contracts[index].createdata!.month}.${contracts[index].createdata!.year}",
                    number: "$index",
                  );
                } else if (context.watch<FilterCubit>().statusProgress) {
                  return CardOfHomePage(
                    fullName: contracts[index].fullName.toString(),
                    amount: contracts[index].inn.toString(),
                    lastinvo: index > 2 ? "${index - 1}" : "${index}",
                    status: contracts[index].status.toString(),
                    numinvo: "${contracts.length}",
                    time:
                        "${contracts[index].createdata!.day}.${contracts[index].createdata!.month}.${contracts[index].createdata!.year}",
                    number: "$index",
                  );
                } else if (context.watch<FilterCubit>().statusIQ) {
                  return CardOfHomePage(
                    fullName: contracts[index].fullName.toString(),
                    amount: contracts[index].inn.toString(),
                    lastinvo: index > 2 ? "${index - 1}" : "${index}",
                    status: contracts[index].status.toString(),
                    numinvo: "${contracts.length}",
                    time:
                        "${contracts[index].createdata!.day}.${contracts[index].createdata!.month}.${contracts[index].createdata!.year}",
                    number: "$index",
                  );
                } else if (context.watch<FilterCubit>().statusPyme) {
                  return CardOfHomePage(
                    fullName: contracts[index].fullName.toString(),
                    amount: contracts[index].inn.toString(),
                    lastinvo: index > 2 ? "${index - 1}" : "${index}",
                    status: contracts[index].status.toString(),
                    numinvo: "${contracts.length}",
                    time:
                        "${contracts[index].createdata!.day}.${contracts[index].createdata!.month}.${contracts[index].createdata!.year}",
                    number: "$index",
                  );
                }

                 else {
                  return CardOfHomePage(
                    fullName: contracts[index].fullName.toString(),
                    amount: contracts[index].inn.toString(),
                    lastinvo: index > 2 ? "${index - 1}" : "${index}",
                    status: contracts[index].status.toString(),
                    numinvo: "${contracts.length}",
                    time:
                        "${contracts[index].createdata!.day}.${contracts[index].createdata!.month}.${contracts[index].createdata!.year}",
                    number: "$index",
                  );
                }
              } else {
                return Text("");
              }
            }));
  }






  InkWell lastData(BuildContext context) {
    return InkWell(
      child: Container(
        height: getH(37),
        width: getW(116),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${context.watch<FilterCubit>().secondDate.day}.${context.watch<FilterCubit>().secondDate.month}.${context.watch<FilterCubit>().secondDate.year}",
              style: UiContstants.valuetextStyles(context),
            ),
            SvgPicture.asset("assets/calendar.svg"),
          ],
        ),
        decoration: BoxDecoration(
            color: UiContstants.kwidgetBackGroundColor(),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      onTap: () async {
        var lastDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime(2023));

        context.read<FilterCubit>().changesecondDate(lastDate);
      },
    );
  }

  InkWell initialDate(BuildContext context) {
    return InkWell(
      onTap: () async{
        var firstdate =  await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime(2023));

        context.read<FilterCubit>().chaneFirstDate(firstdate);
        
      },



      child: Container(
        height: getH(37),
        width: getW(116),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${context.watch<FilterCubit>().firstDate.day}.${context.watch<FilterCubit>().firstDate.month}.${context.watch<FilterCubit>().firstDate.year}",
              style: UiContstants.valuetextStyles(context),
            ),
            SvgPicture.asset("assets/calendar.svg"),
          ],
        ),
        decoration: BoxDecoration(
            color: UiContstants.kwidgetBackGroundColor(),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }

  Row secondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: context.watch<FilterCubit>().statusProgress,
              onChanged: (v) {
                return context.read<FilterCubit>().changeStatusProgress(v);
              },
              side: BorderSide(color: Colors.white),
            ),
            Text(
              "In prpcess",
              style: UiContstants.valuetextStyles(context),
            )
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: context.watch<FilterCubit>().statusPyme,
              onChanged: (v) {
                return context.read<FilterCubit>().changeStatusPyme(v);
              },
              side: BorderSide(color: Colors.white),
            ),
            Text(
              "Rejected by Payme",
              style: UiContstants.valuetextStyles(context),
            )
          ],
        )
      ],
    );
  }

  Row FirstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: context.watch<FilterCubit>().statusPaid,
              onChanged: (v) {
                return context.read<FilterCubit>().changeStatusPaid(v);
              },
              side: BorderSide(color: Colors.white),
            ),
            Text(
              "Paid",
              style: UiContstants.valuetextStyles(context),
            )
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: context.watch<FilterCubit>().statusIQ,
              onChanged: (v) {
                return context.read<FilterCubit>().changeStatusIQ(v);
              },
              side: BorderSide(color: Colors.white),
            ),
            Text(
              "Rejected by IQ",
              style: UiContstants.valuetextStyles(context),
            )
          ],
        )
      ],
    );
  }
}
