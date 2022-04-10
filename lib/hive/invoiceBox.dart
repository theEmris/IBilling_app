import 'package:hive/hive.dart';
import 'package:yiqilma_app/model/forInvoice/invoiceModel.dart';

class InvoiceBoxes {
  static Box<InvoiceModel> getInvoices() => Hive.box<InvoiceModel>("InvoiceBox");
}




