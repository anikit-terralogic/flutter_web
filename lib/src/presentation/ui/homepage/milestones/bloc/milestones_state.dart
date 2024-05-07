import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'milestones_state.freezed.dart';

@freezed
class MileStonePageState extends BaseBlocState with _$MileStonePageState {
  const factory MileStonePageState() = _MileStonePageState;
}
