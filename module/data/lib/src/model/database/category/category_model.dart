import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 2)
class CategoryModel extends HiveObject {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? icon;
  @HiveField(3)
  final String? color;

  CategoryModel({
    this.id,
    this.name,
    this.icon,
    this.color,
  });
}
