// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sample_flutter_web/src/presentation/app/bloc/app_bloc.dart'
    as _i4;
import 'package:sample_flutter_web/src/presentation/base/common/common_bloc.dart'
    as _i5;
import 'package:sample_flutter_web/src/presentation/ui/homepage/aboutme/bloc/aboutus_bloc.dart'
    as _i3;
import 'package:sample_flutter_web/src/presentation/ui/homepage/contactus/bloc/contactus_bloc.dart'
    as _i6;
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_bloc.dart'
    as _i7;
import 'package:sample_flutter_web/src/presentation/ui/homepage/milestones/bloc/milestones_bloc.dart'
    as _i8;
import 'package:sample_flutter_web/src/presentation/ui/homepage/projects/bloc/projects_bloc.dart'
    as _i9;
import 'package:sample_flutter_web/src/presentation/ui/homepage/services/bloc/services_bloc.dart'
    as _i10;
import 'package:sample_flutter_web/src/presentation/ui/homepage/testiminonial/bloc/testimonial_bloc.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AboutUsPageBloc>(() => _i3.AboutUsPageBloc());
    gh.factory<_i4.AppBloc>(() => _i4.AppBloc());
    gh.factory<_i5.CommonBloc>(() => _i5.CommonBloc());
    gh.factory<_i6.ContactUsPageBloc>(() => _i6.ContactUsPageBloc());
    gh.factory<_i7.HomePageBloc>(() => _i7.HomePageBloc());
    gh.factory<_i8.MileStonePageBloc>(() => _i8.MileStonePageBloc());
    gh.factory<_i9.ProjectsBloc>(() => _i9.ProjectsBloc());
    gh.factory<_i10.ServicesPageBloc>(() => _i10.ServicesPageBloc());
    gh.factory<_i11.TestimonialPageBloc>(() => _i11.TestimonialPageBloc());
    return this;
  }
}
