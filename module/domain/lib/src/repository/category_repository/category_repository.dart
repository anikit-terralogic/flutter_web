import 'package:data/data.dart';

abstract class CategoryRepository {
  Future<bool> addCategory(CategoryModel? category);
  Future<List<CategoryModel>> getCategory();
  Future<bool> deleteCategory(String? categoryName);
  Future<bool> updateCategory(CategoryModel? category);
}
