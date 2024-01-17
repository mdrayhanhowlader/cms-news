import 'package:realm/realm.dart';

part 'branch_local_model.g.dart';

@RealmModel()
class _BranchModel {
  @PrimaryKey()
  late int? branchId;
  late String? name;
}
