import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'add_task_use_case.freezed.dart';

@injectable
class AddTaskUseCase extends BaseFutureUseCase<AddTaskInput, void> {
  AddTaskUseCase(this._tasksRepository);

  TasksRepository _tasksRepository;

  @override
  Future buildUseCase(AddTaskInput input) async {
    return await _tasksRepository.addTask(input.request);
  }
}

@freezed
class AddTaskInput extends BaseInput with _$AddTaskInput {
  const factory AddTaskInput({TasksModel? request}) = _AddTaskInput;
}
