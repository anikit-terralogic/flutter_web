import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/milestones/bloc/milestones_event.dart';
import '../../../../base/bloc/base_bloc.dart';
import 'milestones_state.dart';

@injectable
class MileStonePageBloc extends BaseBloc<MileStonePageEvent, MileStonePageState> {
  MileStonePageBloc() : super(const MileStonePageState());
}