import 'package:data/data.dart';

abstract class TasksRepository {
  Future<bool> addTask(TasksModel? task);
  Future<List<TasksModel>> getTask();
  Future<bool> deleteTask(String? taskName);
  Future<bool> updateTask(TasksModel? task);
  Future<TasksModel> getTaskByTitle(String? title);
}
