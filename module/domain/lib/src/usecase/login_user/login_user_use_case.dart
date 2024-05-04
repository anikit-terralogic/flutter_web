import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';
part 'login_user_use_case.freezed.dart';
@injectable
class GetRegisterUseCase extends BaseFutureUseCase<GetItemInput, List<RegisterUserModel>> {
  GetRegisterUseCase(this._registerUserRepository);

  RegisterUserRepository _registerUserRepository;

  @override
  Future<List<RegisterUserModel>> buildUseCase(GetItemInput input) async {
    return await _registerUserRepository.getRegisterUser();
  }
}

@freezed
class GetItemInput extends BaseInput with _$GetItemInput {
  const factory GetItemInput() = _GetItemInput;
}