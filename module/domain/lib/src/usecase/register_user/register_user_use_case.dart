import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain.dart';

part 'register_user_use_case.freezed.dart';

@injectable
class RegisterUserUseCase extends BaseFutureUseCase<RegisterUserInput, void> {
  RegisterUserUseCase(this._registerUserRepository);

  RegisterUserRepository _registerUserRepository;

  @override
  Future buildUseCase(RegisterUserInput input) async {
    return await _registerUserRepository.registerUser(input.request);
  }
}

@freezed
class RegisterUserInput extends BaseInput with _$RegisterUserInput {
  const factory RegisterUserInput({RegisterUserModel? request}) = _RegisterUserInput;
}
