import 'package:flutter/material.dart';
import 'package:yiqilma_app/bloc/bottomNavBar_cubit/bnavBar_view.dart';
import 'package:yiqilma_app/core/constants/UiConstants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yiqilma_app/model/forContracts/contractsModel.dart';
import 'package:yiqilma_app/model/forInvoice/invoiceModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(InvoiceModelAdapter());
  await Hive.openBox<InvoiceModel>("InvoiceBox");
  Hive.registerAdapter(NewContractModelAdapter());
  await Hive.openBox<NewContractModel>("ContractsBox");


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: UiContstants.kPrimarycolor(),
      ),
      home: BottomNavBarView(),
    );
  }
}
