import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_event.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_state.dart';
import '../../../../base/bloc/base_bloc.dart';

@injectable
class HomePageBloc extends BaseBloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState());
}