// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/src/repository/category/category_repository_impl.dart'
    as _i4;
import 'package:data/src/repository/register_user/register_user_repository_impl.dart'
    as _i6;
import 'package:data/src/repository/tasks/tasks_repository_impl.dart' as _i7;
import 'package:domain/domain.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:remote/remote.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initDataGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.CategoryRepository>(
        _i4.CategoryRepositoryImpl(gh<_i5.DbCategory>()));
    gh.singleton<_i3.RegisterUserRepository>(
        _i6.RegisterUserRepositoryImpl(gh<_i5.DbRegisterUser>()));
    gh.singleton<_i3.TasksRepository>(
        _i7.TasksRepositoryImpl(gh<_i5.DbTasks>()));
    return this;
  }
}
