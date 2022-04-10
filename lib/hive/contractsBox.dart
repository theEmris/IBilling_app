import 'package:hive/hive.dart';
import 'package:yiqilma_app/model/forContracts/contractsModel.dart';

class ContractBoxes {
  static Box<NewContractModel> getContracts() => Hive.box<NewContractModel>("ContractsBox");
}


