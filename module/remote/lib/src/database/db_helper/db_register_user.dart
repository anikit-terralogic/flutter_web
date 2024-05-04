import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:data/data.dart';

@LazySingleton()
class DbRegisterUser {
  late var hiveBox;

  init() async {
    hiveBox = await Hive.openBox<RegisterUserModel>('register_user');
  }

  void registerUser(RegisterUserModel? user)async {
    List<RegisterUserModel>? existingCities = hiveBox.values.where((element) => element.userName == user?.userName).toList();
    if (existingCities!.isEmpty) {
      hiveBox.add(user);
    }
    List<RegisterUserModel> registerUsers = [];
    registerUsers = hiveBox.values.toList();
    print("Inserted ${registerUsers.first.userName}");

  }

   getRegisterUsersData() async {
    List<RegisterUserModel>? registerUsers = [];
    registerUsers =  hiveBox.values.toList();
    return registerUsers;
  }
}
