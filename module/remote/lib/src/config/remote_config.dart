import 'package:remote/src/database/db_helper/db_category.dart';
import 'package:remote/src/database/db_helper/db_tasks.dart';
import 'package:remote/src/database/user_manager.dart';

import '../../remote.dart';
import '../di/di.dart' as di;
import 'package:shared/shared.dart';

class RemoteConfig extends Config {
  RemoteConfig._();

  factory RemoteConfig.getInstance() {
    return _instance;
  }

  static final RemoteConfig _instance = RemoteConfig._();

  @override
  Future<void> config() async {
    await di.configureRemoteInjection();
    await di.getIt.get<UserManager>().init();
    await di.getIt.get<DbRegisterUser>().init();
    await di.getIt.get<DbTasks>().init();
    await di.getIt.get<DbCategory>().init();
  }
}
