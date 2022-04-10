import 'package:yiqilma_app/hive/contractsBox.dart';
import 'package:yiqilma_app/model/forContracts/contractsModel.dart';

class contractService {



  
  static Future addContract({
    required String person,
    required String fullName,
    required String location,
    required String inn,
    required String status,
  }) async {
    final a_contract = NewContractModel()
      ..person = person
      ..fullName = fullName
      ..location = location
      ..inn = inn
      ..status = status
      ..createdata = DateTime.now();

    final box = ContractBoxes.getContracts();

    await box.add(a_contract);
  }
}
