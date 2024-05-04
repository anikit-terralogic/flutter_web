import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'delete_task_use_case.freezed.dart';

@injectable
class DeleteTaskUseCase extends BaseFutureUseCase<DeleteTaskInput, void> {
  DeleteTaskUseCase(this._tasksRepository);

  TasksRepository _tasksRepository;

  @override
  Future buildUseCase(DeleteTaskInput input) async {
    return await _tasksRepository.deleteTask(input.id);
  }
}

@freezed
class DeleteTaskInput extends BaseInput with _$DeleteTaskInput {
  const factory DeleteTaskInput({String? id}) = _DeleteTaskInput;
}
