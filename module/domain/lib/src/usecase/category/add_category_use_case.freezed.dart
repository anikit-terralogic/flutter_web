// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCategoryInput {
  CategoryModel? get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCategoryInputCopyWith<AddCategoryInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryInputCopyWith<$Res> {
  factory $AddCategoryInputCopyWith(
          AddCategoryInput value, $Res Function(AddCategoryInput) then) =
      _$AddCategoryInputCopyWithImpl<$Res, AddCategoryInput>;
  @useResult
  $Res call({CategoryModel? request});
}

/// @nodoc
class _$AddCategoryInputCopyWithImpl<$Res, $Val extends AddCategoryInput>
    implements $AddCategoryInputCopyWith<$Res> {
  _$AddCategoryInputCopyWithImpl(this._value, this._then);

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
abstract class _$$AddCategoryInputImplCopyWith<$Res>
    implements $AddCategoryInputCopyWith<$Res> {
  factory _$$AddCategoryInputImplCopyWith(_$AddCategoryInputImpl value,
          $Res Function(_$AddCategoryInputImpl) then) =
      __$$AddCategoryInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryModel? request});
}

/// @nodoc
class __$$AddCategoryInputImplCopyWithImpl<$Res>
    extends _$AddCategoryInputCopyWithImpl<$Res, _$AddCategoryInputImpl>
    implements _$$AddCategoryInputImplCopyWith<$Res> {
  __$$AddCategoryInputImplCopyWithImpl(_$AddCategoryInputImpl _value,
      $Res Function(_$AddCategoryInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$AddCategoryInputImpl(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$AddCategoryInputImpl implements _AddCategoryInput {
  const _$AddCategoryInputImpl({this.request});

  @override
  final CategoryModel? request;

  @override
  String toString() {
    return 'AddCategoryInput(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryInputImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryInputImplCopyWith<_$AddCategoryInputImpl> get copyWith =>
      __$$AddCategoryInputImplCopyWithImpl<_$AddCategoryInputImpl>(
          this, _$identity);
}

abstract class _AddCategoryInput implements AddCategoryInput {
  const factory _AddCategoryInput({final CategoryModel? request}) =
      _$AddCategoryInputImpl;

  @override
  CategoryModel? get request;
  @override
  @JsonKey(ignore: true)
  _$$AddCategoryInputImplCopyWith<_$AddCategoryInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
