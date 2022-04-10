import 'package:hive/hive.dart';

part 'contractsModel.g.dart';

@HiveType(typeId: 2)
class NewContractModel {
  @HiveField(0)
  String? person;

  @HiveField(1)
  String? fullName;

  @HiveField(2)
  String? location;

  @HiveField(3)
  String? inn;

  @HiveField(4)
  String? status;

  @HiveField(5)
  DateTime? createdata;
}
