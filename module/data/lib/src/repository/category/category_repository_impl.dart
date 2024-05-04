import 'package:data/src/model/database/category/category_model.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

@Singleton(as: CategoryRepository)
class CategoryRepositoryImpl extends CategoryRepository {
  final DbCategory _dbCategory;

  CategoryRepositoryImpl(this._dbCategory);

  @override
  Future<bool> addCategory(CategoryModel? category) async {
    return _dbCategory.addCategory(category);
  }

  @override
  Future<bool> deleteCategory(String? categoryName) async{
    return _dbCategory.deleteCategory(categoryName);
  }

  @override
  Future<List<CategoryModel>> getCategory() async{
    return _dbCategory.getCategory();
  }

  @override
  Future<bool> updateCategory(CategoryModel? category)async {
    return _dbCategory.updateCategory(category);
  }
}
