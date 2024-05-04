import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'get_category_use_case.freezed.dart';

@injectable
class GetCategoryUseCase extends BaseFutureUseCase<GetCategoryInput, void> {
  GetCategoryUseCase(this._categoryRepository);

  CategoryRepository _categoryRepository;

  @override
  Future buildUseCase(GetCategoryInput input) async {
    return await _categoryRepository.getCategory();
  }
}

@freezed
class GetCategoryInput extends BaseInput with _$GetCategoryInput {
  const factory GetCategoryInput() = _GetCategoryInput;
}
