// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateCategoryInput {
  CategoryModel? get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCategoryInputCopyWith<UpdateCategoryInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCategoryInputCopyWith<$Res> {
  factory $UpdateCategoryInputCopyWith(
          UpdateCategoryInput value, $Res Function(UpdateCategoryInput) then) =
      _$UpdateCategoryInputCopyWithImpl<$Res, UpdateCategoryInput>;
  @useResult
  $Res call({CategoryModel? request});
}

/// @nodoc
class _$UpdateCategoryInputCopyWithImpl<$Res, $Val extends UpdateCategoryInput>
    implements $UpdateCategoryInputCopyWith<$Res> {
  _$UpdateCategoryInputCopyWithImpl(this._value, this._then);

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
              as CategoryModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCategoryInputImplCopyWith<$Res>
    implements $UpdateCategoryInputCopyWith<$Res> {
  factory _$$UpdateCategoryInputImplCopyWith(_$UpdateCategoryInputImpl value,
          $Res Function(_$UpdateCategoryInputImpl) then) =
      __$$UpdateCategoryInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryModel? request});
}

/// @nodoc
class __$$UpdateCategoryInputImplCopyWithImpl<$Res>
    extends _$UpdateCategoryInputCopyWithImpl<$Res, _$UpdateCategoryInputImpl>
    implements _$$UpdateCategoryInputImplCopyWith<$Res> {
  __$$UpdateCategoryInputImplCopyWithImpl(_$UpdateCategoryInputImpl _value,
      $Res Function(_$UpdateCategoryInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$UpdateCategoryInputImpl(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryInputImpl implements _UpdateCategoryInput {
  const _$UpdateCategoryInputImpl({this.request});

  @override
  final CategoryModel? request;

  @override
  String toString() {
    return 'UpdateCategoryInput(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryInputImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryInputImplCopyWith<_$UpdateCategoryInputImpl> get copyWith =>
      __$$UpdateCategoryInputImplCopyWithImpl<_$UpdateCategoryInputImpl>(
          this, _$identity);
}

abstract class _UpdateCategoryInput implements UpdateCategoryInput {
  const factory _UpdateCategoryInput({final CategoryModel? request}) =
      _$UpdateCategoryInputImpl;

  @override
  CategoryModel? get request;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCategoryInputImplCopyWith<_$UpdateCategoryInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
