import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_event.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_state.dart';
import '../../../../base/bloc/base_bloc.dart';
import 'projects_event.dart';
import 'projects_state.dart';

@injectable
class ProjectsBloc extends BaseBloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(const ProjectsState());
}