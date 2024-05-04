import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:data/data.dart';

@LazySingleton()
class DbTasks {
  late var hiveBox;

  init() async {
    hiveBox = await Hive.openBox<TasksModel>('db_tasks');
  }

  Future<bool> addTask(TasksModel? tasks) async {
    List<TasksModel>? existingTask = hiveBox.values.where((element) => element.title == tasks!.title).toList();
    if (existingTask!.isEmpty) {
      hiveBox.add(tasks);
      return true;
    } else {
      return false;
    }
  }

  Future<List<TasksModel>> getTasks() async {
    return hiveBox.values.toList();
  }

  Future<bool> deleteTasks(String? taskName) async {
    List<TasksModel>? existingTask = hiveBox.values.where((element) => element.title == taskName).toList();
    if (existingTask!.isEmpty) {
      final Map<dynamic, TasksModel> cityMap = hiveBox.toMap();
      dynamic desiredKey;
      cityMap.forEach((key, value) {
        if (value.title == taskName) {
          desiredKey = key;
        }
      });
      hiveBox.delete(desiredKey);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateTask(TasksModel? tasks) async {
    List<TasksModel>? existingTask = hiveBox.values.where((element) => element.title == tasks?.title).toList();
    if (existingTask!.isEmpty) {
      if (await deleteTasks(tasks!.title) == true) {
        hiveBox.add(tasks);
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<TasksModel> getTaskByTitle(String? title) async {
    var tasks = hiveBox.values.where((element) => element.title == title).toList();
    if (tasks.isNotEmpty) {
      return tasks.first;
    } else {
      return tasks;
    }
  }
}
