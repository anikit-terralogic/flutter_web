import 'package:data/data.dart';

abstract class RegisterUserRepository {
  Future<void> registerUser(RegisterUserModel? user);
  Future getRegisterUser();
}
