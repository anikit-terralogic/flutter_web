import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:data/data.dart';

@LazySingleton()
class DbCategory {
  late var hiveBox;

  init() async {
    hiveBox = await Hive.openBox<CategoryModel>('db_category');
  }

  Future<bool> addCategory(CategoryModel? category) async {
    List<CategoryModel>? existingCategory = hiveBox.values.where((element) => element.name == category?.name).toList();
    if (existingCategory!.isEmpty) {
      hiveBox.add(category);
      return true;
    } else {
      return false;
    }
  }

  getCategory() async {
    return hiveBox.values.toList();
  }

  Future<bool> deleteCategory(String? categoryName) async {
    List<CategoryModel>? existingCategory = hiveBox.values.where((element) => element.name == categoryName).toList();
    if (existingCategory!.isEmpty) {
      final Map<dynamic, CategoryModel> cityMap = hiveBox.toMap();
      dynamic desiredKey;
      cityMap.forEach((key, value) {
        if (value.name == categoryName) {
          desiredKey = key;
        }
      });
      hiveBox.delete(desiredKey);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateCategory(CategoryModel? category) async {
    List<CategoryModel>? existingCategory = hiveBox.values.where((element) => element.name == category?.name).toList();
    if (existingCategory!.isEmpty) {
      if (await deleteCategory(category!.name) == true) {
        hiveBox.add(category);
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
