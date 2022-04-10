import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:yiqilma_app/bloc/invocont_bloc/invocont_cubit.dart';
import 'package:yiqilma_app/core/components/cardOfHomePage.dart';
import 'package:yiqilma_app/hive/contractsBox.dart';
import 'package:yiqilma_app/hive/invoiceBox.dart';
import 'package:yiqilma_app/model/forContracts/contractsModel.dart';
import 'package:yiqilma_app/model/forInvoice/invoiceModel.dart';
import 'package:yiqilma_app/screens/create/new_invoice.dart';
import 'package:yiqilma_app/widgets/myAppBars.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBars.myAppBar(context, "Contracts"),
      body: Column(
        children: [
          kalendar(),
          Expanded(
              flex: 8,
              child: ListView(
                children: [
                  pointerbuttons(context),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: context.watch<InvoContCubit>().isClosed
                        ? ValueListenableBuilder<Box<NewContractModel>>(
                            valueListenable:
                                ContractBoxes.getContracts().listenable(),
                            builder: (context, box, _) {
                              final contracts =
                                  box.values.toList().cast<NewContractModel>();
                              return buildContet(contracts, context);
                            },
                          )
                        : ValueListenableBuilder<Box<InvoiceModel>>(
                            valueListenable:
                                InvoiceBoxes.getInvoices().listenable(),
                            builder: (context, box, _) {
                              final invoices =
                                  box.values.toList().cast<InvoiceModel>();
                              return buildInvoice(invoices, context);
                            }),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  SizedBox pointerbuttons(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<InvoContCubit>().changeisContracts(true);
            },
            child: Text(
              "contracts",
            ),
          ),
          TextButton(
              onPressed: () {
                context.read<InvoContCubit>().changeisContracts(false);
              },
              child: Text(
                "Invoice",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ))
        ],
      ),
    );
  }

  Widget buildContet(List<NewContractModel> contracts, BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: ListView.builder(
            itemCount: contracts.length,
            itemBuilder: (context, index) {
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
            }));
  }

  Widget buildInvoice(List<InvoiceModel> invoices, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(itemBuilder: (context, index) {
        return CardOfHomePage(
            fullName: invoices[index].nameofservice.toString(),
            amount: invoices[index].summofinvoice.toString(),
            lastinvo: index > 2 ? "${index - 1}" : index.toString(),
            status: invoices[index].status.toString(),
            numinvo: invoices.length.toString(),
            time: invoices[index].createTime.toString(),
            number: index.toString());
      }),
    );
  }

  Expanded kalendar() {
    return Expanded(
        flex: 2,
        child: Container(
            color: Color(0xFF1E1E20),
            child: CalendarAgenda(
              backgroundColor: Colors.transparent,
              selectedDateColor: Color(0xFF00A795),
              dateColor: Color(0xFFD1D1D1),
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              lastDate: DateTime.now().add(Duration(days: 4)),
              onDateSelected: (date) {
                print(date);
              },
            )));
  }
}
