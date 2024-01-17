// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModelAdapter extends TypeAdapter<LoginModel> {
  @override
  final int typeId = 2;

  @override
  LoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginModel(
      token: fields[1] as String?,
      encryptedUser: fields[2] as String?,
      isDefaultPassword: fields[3] as bool?,
      passwordExpiredIn: fields[4] as String?,
      serverId: fields[5] as String?,
      userId: fields[6] as String?,
      userSid: fields[7] as int?,
      userName: fields[8] as String?,
      userImage: fields[9] as String?,
      userPhoneNum: fields[10] as String?,
      userIc: fields[11] as String?,
      userEmail: fields[12] as String?,
      userAddr: fields[13] as String?,
      schName: fields[14] as String?,
      schAddr: fields[15] as String?,
      schCoordinate: fields[16] as String?,
      schRadius: fields[17] as String?,
      systemLevel: fields[18] as String?,
      systemAccess: fields[19] as String?,
      systemConfig: fields[20] as String?,
      bosConfig: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginModel obj) {
    writer
      ..writeByte(21)
      ..writeByte(1)
      ..write(obj.token)
      ..writeByte(2)
      ..write(obj.encryptedUser)
      ..writeByte(3)
      ..write(obj.isDefaultPassword)
      ..writeByte(4)
      ..write(obj.passwordExpiredIn)
      ..writeByte(5)
      ..write(obj.serverId)
      ..writeByte(6)
      ..write(obj.userId)
      ..writeByte(7)
      ..write(obj.userSid)
      ..writeByte(8)
      ..write(obj.userName)
      ..writeByte(9)
      ..write(obj.userImage)
      ..writeByte(10)
      ..write(obj.userPhoneNum)
      ..writeByte(11)
      ..write(obj.userIc)
      ..writeByte(12)
      ..write(obj.userEmail)
      ..writeByte(13)
      ..write(obj.userAddr)
      ..writeByte(14)
      ..write(obj.schName)
      ..writeByte(15)
      ..write(obj.schAddr)
      ..writeByte(16)
      ..write(obj.schCoordinate)
      ..writeByte(17)
      ..write(obj.schRadius)
      ..writeByte(18)
      ..write(obj.systemLevel)
      ..writeByte(19)
      ..write(obj.systemAccess)
      ..writeByte(20)
      ..write(obj.systemConfig)
      ..writeByte(21)
      ..write(obj.bosConfig);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
