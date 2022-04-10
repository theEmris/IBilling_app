import 'package:hive/hive.dart';
part 'invoiceModel.g.dart';





@HiveType(typeId: 0)
class InvoiceModel extends HiveObject {
  @HiveField(0)
  String? nameofservice;

  @HiveField(1)
  String? summofinvoice;

  @HiveField(2)
  String? status;
  @HiveField(3)
  DateTime? createTime;
}
