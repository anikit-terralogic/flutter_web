import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/services/bloc/services_event.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/services/bloc/services_state.dart';
import '../../../../base/bloc/base_bloc.dart';

@injectable
class ServicesPageBloc extends BaseBloc<ServicesPageEvent, ServicesPageState> {
  ServicesPageBloc() : super(const ServicesPageState());
}