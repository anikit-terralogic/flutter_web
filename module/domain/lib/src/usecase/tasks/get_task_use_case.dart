import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'get_task_use_case.freezed.dart';

@injectable
class GetTaskUseCase extends BaseFutureUseCase<GetTaskInput, void> {
  GetTaskUseCase(this._tasksRepository);

  TasksRepository _tasksRepository;

  @override
  Future buildUseCase(GetTaskInput input) async {
    return await _tasksRepository.getTask();
  }
}

@freezed
class GetTaskInput extends BaseInput with _$GetTaskInput {
  const factory GetTaskInput() = _GetTaskInput;
}
