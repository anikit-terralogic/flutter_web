// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteCategoryInput {
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteCategoryInputCopyWith<DeleteCategoryInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCategoryInputCopyWith<$Res> {
  factory $DeleteCategoryInputCopyWith(
          DeleteCategoryInput value, $Res Function(DeleteCategoryInput) then) =
      _$DeleteCategoryInputCopyWithImpl<$Res, DeleteCategoryInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$DeleteCategoryInputCopyWithImpl<$Res, $Val extends DeleteCategoryInput>
    implements $DeleteCategoryInputCopyWith<$Res> {
  _$DeleteCategoryInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCategoryInputImplCopyWith<$Res>
    implements $DeleteCategoryInputCopyWith<$Res> {
  factory _$$DeleteCategoryInputImplCopyWith(_$DeleteCategoryInputImpl value,
          $Res Function(_$DeleteCategoryInputImpl) then) =
      __$$DeleteCategoryInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$DeleteCategoryInputImplCopyWithImpl<$Res>
    extends _$DeleteCategoryInputCopyWithImpl<$Res, _$DeleteCategoryInputImpl>
    implements _$$DeleteCategoryInputImplCopyWith<$Res> {
  __$$DeleteCategoryInputImplCopyWithImpl(_$DeleteCategoryInputImpl _value,
      $Res Function(_$DeleteCategoryInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DeleteCategoryInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryInputImpl implements _DeleteCategoryInput {
  const _$DeleteCategoryInputImpl({this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'DeleteCategoryInput(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryInputImplCopyWith<_$DeleteCategoryInputImpl> get copyWith =>
      __$$DeleteCategoryInputImplCopyWithImpl<_$DeleteCategoryInputImpl>(
          this, _$identity);
}

abstract class _DeleteCategoryInput implements DeleteCategoryInput {
  const factory _DeleteCategoryInput({final String? id}) =
      _$DeleteCategoryInputImpl;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCategoryInputImplCopyWith<_$DeleteCategoryInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
