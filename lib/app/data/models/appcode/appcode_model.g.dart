// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appcode_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppcodeModelAdapter extends TypeAdapter<AppcodeModel> {
  @override
  final int typeId = 1;

  @override
  AppcodeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppcodeModel(
      encryptedKey: fields[1] as String?,
      serverId: fields[2] as String?,
      sid: fields[3] as String?,
      clientAppname: fields[4] as String?,
      clientAppengine: fields[5] as String?,
      clientTel: fields[6] as String?,
      clientRegno: fields[7] as String?,
      clientAddress: fields[8] as String?,
      clientPostcode: fields[9] as String?,
      clientDistrict: fields[10] as String?,
      clientState: fields[11] as String?,
      customer: fields[12] as String?,
      clientLogo: fields[13] as String?,
      appConfig: fields[14] as String?,
      url: fields[15] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppcodeModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(1)
      ..write(obj.encryptedKey)
      ..writeByte(2)
      ..write(obj.serverId)
      ..writeByte(3)
      ..write(obj.sid)
      ..writeByte(4)
      ..write(obj.clientAppname)
      ..writeByte(5)
      ..write(obj.clientAppengine)
      ..writeByte(6)
      ..write(obj.clientTel)
      ..writeByte(7)
      ..write(obj.clientRegno)
      ..writeByte(8)
      ..write(obj.clientAddress)
      ..writeByte(9)
      ..write(obj.clientPostcode)
      ..writeByte(10)
      ..write(obj.clientDistrict)
      ..writeByte(11)
      ..write(obj.clientState)
      ..writeByte(12)
      ..write(obj.customer)
      ..writeByte(13)
      ..write(obj.clientLogo)
      ..writeByte(14)
      ..write(obj.appConfig)
      ..writeByte(15)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppcodeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
