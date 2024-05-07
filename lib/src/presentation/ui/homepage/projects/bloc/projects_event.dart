import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/bloc/base_bloc_event.dart';

@immutable
abstract class ProjectsEvent extends BaseBlocEvent {
  const ProjectsEvent();
}
