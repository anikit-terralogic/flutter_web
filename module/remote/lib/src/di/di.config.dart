// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:remote/src/database/db_helper/db_category.dart' as _i3;
import 'package:remote/src/database/db_helper/db_register_user.dart' as _i4;
import 'package:remote/src/database/db_helper/db_tasks.dart' as _i5;
import 'package:remote/src/database/user_manager.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initRemoteGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DbCategory>(() => _i3.DbCategory());
    gh.lazySingleton<_i4.DbRegisterUser>(() => _i4.DbRegisterUser());
    gh.lazySingleton<_i5.DbTasks>(() => _i5.DbTasks());
    gh.lazySingleton<_i6.UserManager>(() => _i6.UserManager());
    return this;
  }
}
