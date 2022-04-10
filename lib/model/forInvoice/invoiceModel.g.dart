// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceModelAdapter extends TypeAdapter<InvoiceModel> {
  @override
  final int typeId = 0;

  @override
  InvoiceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceModel()
      ..nameofservice = fields[0] as String?
      ..summofinvoice = fields[1] as String?
      ..status = fields[2] as String?
      ..createTime = fields[3] as DateTime?;
  }

  @override
  void write(BinaryWriter writer, InvoiceModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nameofservice)
      ..writeByte(1)
      ..write(obj.summofinvoice)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.createTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
