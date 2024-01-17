// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_local_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class StaffModel extends _StaffModel
    with RealmEntity, RealmObjectBase, RealmObject {
  StaffModel(
    int? id, {
    String? uid,
    String? name,
    String? nickName,
    int? branchId,
    String? ic,
    String? email,
    String? landPhone,
    String? cellPhone,
    String? address,
    String? designation,
    String? jobDivision,
    String? jobStatus,
    String? image,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'uid', uid);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'nickName', nickName);
    RealmObjectBase.set(this, 'branchId', branchId);
    RealmObjectBase.set(this, 'ic', ic);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'landPhone', landPhone);
    RealmObjectBase.set(this, 'cellPhone', cellPhone);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set(this, 'designation', designation);
    RealmObjectBase.set(this, 'jobDivision', jobDivision);
    RealmObjectBase.set(this, 'jobStatus', jobStatus);
    RealmObjectBase.set(this, 'image', image);
  }

  StaffModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get uid => RealmObjectBase.get<String>(this, 'uid') as String?;
  @override
  set uid(String? value) => RealmObjectBase.set(this, 'uid', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get nickName =>
      RealmObjectBase.get<String>(this, 'nickName') as String?;
  @override
  set nickName(String? value) => RealmObjectBase.set(this, 'nickName', value);

  @override
  int? get branchId => RealmObjectBase.get<int>(this, 'branchId') as int?;
  @override
  set branchId(int? value) => RealmObjectBase.set(this, 'branchId', value);

  @override
  String? get ic => RealmObjectBase.get<String>(this, 'ic') as String?;
  @override
  set ic(String? value) => RealmObjectBase.set(this, 'ic', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  String? get landPhone =>
      RealmObjectBase.get<String>(this, 'landPhone') as String?;
  @override
  set landPhone(String? value) => RealmObjectBase.set(this, 'landPhone', value);

  @override
  String? get cellPhone =>
      RealmObjectBase.get<String>(this, 'cellPhone') as String?;
  @override
  set cellPhone(String? value) => RealmObjectBase.set(this, 'cellPhone', value);

  @override
  String? get address =>
      RealmObjectBase.get<String>(this, 'address') as String?;
  @override
  set address(String? value) => RealmObjectBase.set(this, 'address', value);

  @override
  String? get designation =>
      RealmObjectBase.get<String>(this, 'designation') as String?;
  @override
  set designation(String? value) =>
      RealmObjectBase.set(this, 'designation', value);

  @override
  String? get jobDivision =>
      RealmObjectBase.get<String>(this, 'jobDivision') as String?;
  @override
  set jobDivision(String? value) =>
      RealmObjectBase.set(this, 'jobDivision', value);

  @override
  String? get jobStatus =>
      RealmObjectBase.get<String>(this, 'jobStatus') as String?;
  @override
  set jobStatus(String? value) => RealmObjectBase.set(this, 'jobStatus', value);

  @override
  String? get image => RealmObjectBase.get<String>(this, 'image') as String?;
  @override
  set image(String? value) => RealmObjectBase.set(this, 'image', value);

  @override
  Stream<RealmObjectChanges<StaffModel>> get changes =>
      RealmObjectBase.getChanges<StaffModel>(this);

  @override
  StaffModel freeze() => RealmObjectBase.freezeObject<StaffModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(StaffModel._);
    return const SchemaObject(
        ObjectType.realmObject, StaffModel, 'StaffModel', [
      SchemaProperty('id', RealmPropertyType.int,
          optional: true, primaryKey: true),
      SchemaProperty('uid', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('nickName', RealmPropertyType.string, optional: true),
      SchemaProperty('branchId', RealmPropertyType.int, optional: true),
      SchemaProperty('ic', RealmPropertyType.string, optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('landPhone', RealmPropertyType.string, optional: true),
      SchemaProperty('cellPhone', RealmPropertyType.string, optional: true),
      SchemaProperty('address', RealmPropertyType.string, optional: true),
      SchemaProperty('designation', RealmPropertyType.string, optional: true),
      SchemaProperty('jobDivision', RealmPropertyType.string, optional: true),
      SchemaProperty('jobStatus', RealmPropertyType.string, optional: true),
      SchemaProperty('image', RealmPropertyType.string, optional: true),
    ]);
  }
}
