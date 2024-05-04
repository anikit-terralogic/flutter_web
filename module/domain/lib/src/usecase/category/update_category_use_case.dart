import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'update_category_use_case.freezed.dart';

@injectable
class UpdateCategoryUseCase extends BaseFutureUseCase<UpdateCategoryInput, void> {
  UpdateCategoryUseCase(this._categoryRepository);

  CategoryRepository _categoryRepository;

  @override
  Future buildUseCase(UpdateCategoryInput input) async {
    return await _categoryRepository.updateCategory(input.request);
  }
}

@freezed
class UpdateCategoryInput extends BaseInput with _$UpdateCategoryInput {
  const factory UpdateCategoryInput({CategoryModel? request}) = _UpdateCategoryInput;
}
