import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'update_task_use_case.freezed.dart';

@injectable
class UpdateTaskUseCase extends BaseFutureUseCase<UpdateTaskInput, void> {
  UpdateTaskUseCase(this._tasksRepository);

  TasksRepository _tasksRepository;

  @override
  Future buildUseCase(UpdateTaskInput input) async {
    return await _tasksRepository.updateTask(input.request);
  }
}

@freezed
class UpdateTaskInput extends BaseInput with _$UpdateTaskInput {
  const factory UpdateTaskInput({TasksModel? request}) = _UpdateTaskInput;
}
