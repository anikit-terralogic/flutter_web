
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../route/app_router.dart';
import '../bloc/base_bloc.dart';

abstract class BaseContainerState<T extends StatefulWidget, B extends BaseBloc>
    extends BaseContainerStateDelegate<T, B> {
}

abstract class BaseContainerStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> {

  late final B bloc = GetIt.instance.get<B>();

  final AppRouter appRouter = GetIt.instance.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: buildPage(context),
    );
  }

  Widget buildPage(BuildContext context);

}
