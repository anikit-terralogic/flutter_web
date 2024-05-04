import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'delete_category_use_case.freezed.dart';

@injectable
class DeleteCategoryUseCase extends BaseFutureUseCase<DeleteCategoryInput, void> {
  DeleteCategoryUseCase(this._categoryRepository);

  CategoryRepository _categoryRepository;

  @override
  Future buildUseCase(DeleteCategoryInput input) async {
    return await _categoryRepository.deleteCategory(input.id);
  }
}

@freezed
class DeleteCategoryInput extends BaseInput with _$DeleteCategoryInput {
  const factory DeleteCategoryInput({String? id}) = _DeleteCategoryInput;
}
