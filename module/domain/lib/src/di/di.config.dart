// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:domain/src/usecase/category/add_category_use_case.dart' as _i3;
import 'package:domain/src/usecase/category/delete_category_use_case.dart'
    as _i6;
import 'package:domain/src/usecase/category/get_category_use_case.dart' as _i8;
import 'package:domain/src/usecase/category/update_category_use_case.dart'
    as _i13;
import 'package:domain/src/usecase/login_user/login_user_use_case.dart' as _i9;
import 'package:domain/src/usecase/register_user/register_user_use_case.dart'
    as _i12;
import 'package:domain/src/usecase/tasks/add_task_use_case.dart' as _i5;
import 'package:domain/src/usecase/tasks/delete_task_use_case.dart' as _i7;
import 'package:domain/src/usecase/tasks/get_task_by_title_use_case.dart'
    as _i10;
import 'package:domain/src/usecase/tasks/get_task_use_case.dart' as _i11;
import 'package:domain/src/usecase/tasks/update_task_use_case.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initDomainGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AddCategoryUseCase>(
        () => _i3.AddCategoryUseCase(gh<_i4.CategoryRepository>()));
    gh.factory<_i5.AddTaskUseCase>(
        () => _i5.AddTaskUseCase(gh<_i4.TasksRepository>()));
    gh.factory<_i6.DeleteCategoryUseCase>(
        () => _i6.DeleteCategoryUseCase(gh<_i4.CategoryRepository>()));
    gh.factory<_i7.DeleteTaskUseCase>(
        () => _i7.DeleteTaskUseCase(gh<_i4.TasksRepository>()));
    gh.factory<_i8.GetCategoryUseCase>(
        () => _i8.GetCategoryUseCase(gh<_i4.CategoryRepository>()));
    gh.factory<_i9.GetRegisterUseCase>(
        () => _i9.GetRegisterUseCase(gh<_i4.RegisterUserRepository>()));
    gh.factory<_i10.GetTaskByTitleUseCase>(
        () => _i10.GetTaskByTitleUseCase(gh<_i4.TasksRepository>()));
    gh.factory<_i11.GetTaskUseCase>(
        () => _i11.GetTaskUseCase(gh<_i4.TasksRepository>()));
    gh.factory<_i12.RegisterUserUseCase>(
        () => _i12.RegisterUserUseCase(gh<_i4.RegisterUserRepository>()));
    gh.factory<_i13.UpdateCategoryUseCase>(
        () => _i13.UpdateCategoryUseCase(gh<_i4.CategoryRepository>()));
    gh.factory<_i14.UpdateTaskUseCase>(
        () => _i14.UpdateTaskUseCase(gh<_i4.TasksRepository>()));
    return this;
  }
}
