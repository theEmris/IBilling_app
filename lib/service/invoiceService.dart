import 'package:yiqilma_app/hive/invoiceBox.dart';
import 'package:yiqilma_app/model/forInvoice/invoiceModel.dart';

class InvoiceService {
  
  
  
  
  static Future addInvoice({
    required String nameofService,
    required String summofinvoice,
  })
   async {
    final an_invoice = InvoiceModel()
      ..nameofservice = nameofService
      ..summofinvoice = summofinvoice
      ..createTime = DateTime.now();
    final box = InvoiceBoxes.getInvoices();

   await box.add(an_invoice);
  
  
  
  }
}
