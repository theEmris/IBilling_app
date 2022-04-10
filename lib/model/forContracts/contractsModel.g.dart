// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractsModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewContractModelAdapter extends TypeAdapter<NewContractModel> {
  @override
  final int typeId = 2;

  @override
  NewContractModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewContractModel()
      ..person = fields[0] as String?
      ..fullName = fields[1] as String?
      ..location = fields[2] as String?
      ..inn = fields[3] as String?
      ..status = fields[4] as String?
      ..createdata = fields[5] as DateTime?;
  }

  @override
  void write(BinaryWriter writer, NewContractModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.person)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.location)
      ..writeByte(3)
      ..write(obj.inn)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.createdata);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewContractModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
