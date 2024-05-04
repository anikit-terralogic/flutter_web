import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'get_task_by_title_use_case.freezed.dart';

@injectable
class GetTaskByTitleUseCase extends BaseFutureUseCase<GetTaskByTitleInput, void> {
  GetTaskByTitleUseCase(this._tasksRepository);

  TasksRepository _tasksRepository;

  @override
  Future buildUseCase(GetTaskByTitleInput input) async {
    return await _tasksRepository.getTaskByTitle(input.title);
  }
}

@freezed
class GetTaskByTitleInput extends BaseInput with _$GetTaskByTitleInput {
  const factory GetTaskByTitleInput(String? title) = _GetTaskByTitleInput;
}
