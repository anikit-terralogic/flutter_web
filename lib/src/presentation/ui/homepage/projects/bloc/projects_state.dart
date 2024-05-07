import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'projects_state.freezed.dart';

@freezed
class ProjectsState extends BaseBlocState with _$ProjectsState {
  const factory ProjectsState() = _ProjectsState;
}
