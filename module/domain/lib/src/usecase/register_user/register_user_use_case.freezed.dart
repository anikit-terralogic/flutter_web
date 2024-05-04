// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterUserInput {
  RegisterUserModel? get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserInputCopyWith<RegisterUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserInputCopyWith<$Res> {
  factory $RegisterUserInputCopyWith(
          RegisterUserInput value, $Res Function(RegisterUserInput) then) =
      _$RegisterUserInputCopyWithImpl<$Res, RegisterUserInput>;
  @useResult
  $Res call({RegisterUserModel? request});
}

/// @nodoc
class _$RegisterUserInputCopyWithImpl<$Res, $Val extends RegisterUserInput>
    implements $RegisterUserInputCopyWith<$Res> {
  _$RegisterUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserInputImplCopyWith<$Res>
    implements $RegisterUserInputCopyWith<$Res> {
  factory _$$RegisterUserInputImplCopyWith(_$RegisterUserInputImpl value,
          $Res Function(_$RegisterUserInputImpl) then) =
      __$$RegisterUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterUserModel? request});
}

/// @nodoc
class __$$RegisterUserInputImplCopyWithImpl<$Res>
    extends _$RegisterUserInputCopyWithImpl<$Res, _$RegisterUserInputImpl>
    implements _$$RegisterUserInputImplCopyWith<$Res> {
  __$$RegisterUserInputImplCopyWithImpl(_$RegisterUserInputImpl _value,
      $Res Function(_$RegisterUserInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$RegisterUserInputImpl(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel?,
    ));
  }
}

/// @nodoc

class _$RegisterUserInputImpl implements _RegisterUserInput {
  const _$RegisterUserInputImpl({this.request});

  @override
  final RegisterUserModel? request;

  @override
  String toString() {
    return 'RegisterUserInput(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserInputImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserInputImplCopyWith<_$RegisterUserInputImpl> get copyWith =>
      __$$RegisterUserInputImplCopyWithImpl<_$RegisterUserInputImpl>(
          this, _$identity);
}

abstract class _RegisterUserInput implements RegisterUserInput {
  const factory _RegisterUserInput({final RegisterUserModel? request}) =
      _$RegisterUserInputImpl;

  @override
  RegisterUserModel? get request;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserInputImplCopyWith<_$RegisterUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
