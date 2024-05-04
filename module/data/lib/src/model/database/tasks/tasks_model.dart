import 'package:hive/hive.dart';

part 'tasks_model.g.dart';

@HiveType(typeId: 1)
class TasksModel extends HiveObject {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String? date;
  @HiveField(4)
  final String? time;
  @HiveField(5)
  final String? category;
  @HiveField(6)
  final String? priority;
  @HiveField(7)
  final String? status;

  TasksModel({this.id, this.title, this.description, this.date, this.time, this.category, this.priority, this.status});
}
