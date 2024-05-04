import 'package:hive/hive.dart';

part 'register_user_model.g.dart';

@HiveType(typeId: 0)
class RegisterUserModel extends HiveObject {

  @HiveField(0)
  final String? userName;
  @HiveField(1)
  final String? password;

  RegisterUserModel({this.userName, this.password});
}
