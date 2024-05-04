import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserManager {
  late Box myBox;

  Future init() async {
    myBox = await Hive.openBox("user_manager"); // Initialize the Hive box
  }


  Future saveUser(String user) async {
    await myBox.put('user', user);
  }

  retrieveUser() {
    return myBox.get('user', defaultValue: "");
  }
}
