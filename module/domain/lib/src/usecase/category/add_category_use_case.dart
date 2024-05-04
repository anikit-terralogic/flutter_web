import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'add_category_use_case.freezed.dart';

@injectable
class AddCategoryUseCase extends BaseFutureUseCase<AddCategoryInput, void> {
  AddCategoryUseCase(this._categoryRepository);

  CategoryRepository _categoryRepository;

  @override
  Future buildUseCase(AddCategoryInput input) async {
    return await _categoryRepository.addCategory(input.request);
  }
}

@freezed
class AddCategoryInput extends BaseInput with _$AddCategoryInput {
  const factory AddCategoryInput({CategoryModel? request}) = _AddCategoryInput;
}
