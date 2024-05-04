import 'package:data/src/model/database/register_user_model.dart';
import 'package:data/src/model/database/tasks/tasks_model.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

@Singleton(as: TasksRepository)
class TasksRepositoryImpl extends TasksRepository {
  final DbTasks _dbTasks;

  TasksRepositoryImpl(this._dbTasks);

  @override
  Future<bool> addTask(TasksModel? task) async {
    return _dbTasks.addTask(task);
  }

  @override
  Future<bool> deleteTask(String? taskName) async {
    return _dbTasks.deleteTasks(taskName);
  }

  @override
  Future<List<TasksModel>> getTask() async {
    return _dbTasks.getTasks();
  }

  @override
  Future<bool> updateTask(TasksModel? task) async {
    return _dbTasks.updateTask(task);
  }

  @override
  Future<TasksModel> getTaskByTitle(String? title) async {
    return _dbTasks.getTaskByTitle(title);
  }
}
