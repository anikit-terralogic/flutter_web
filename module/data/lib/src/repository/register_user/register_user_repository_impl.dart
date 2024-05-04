import 'package:data/src/model/database/register_user_model.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

@Singleton(as:RegisterUserRepository)
class RegisterUserRepositoryImpl extends RegisterUserRepository {
  final DbRegisterUser _dbRegisterUser;

  RegisterUserRepositoryImpl(this._dbRegisterUser);

  @override
  Future<void> registerUser(RegisterUserModel? user) async {
    _dbRegisterUser.registerUser(user);
  }

  @override
  Future getRegisterUser() async{
   return _dbRegisterUser.getRegisterUsersData();
  }

}
