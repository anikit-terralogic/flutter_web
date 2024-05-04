// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteTaskInput {
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTaskInputCopyWith<DeleteTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskInputCopyWith<$Res> {
  factory $DeleteTaskInputCopyWith(
          DeleteTaskInput value, $Res Function(DeleteTaskInput) then) =
      _$DeleteTaskInputCopyWithImpl<$Res, DeleteTaskInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$DeleteTaskInputCopyWithImpl<$Res, $Val extends DeleteTaskInput>
    implements $DeleteTaskInputCopyWith<$Res> {
  _$DeleteTaskInputCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteTaskInputImplCopyWith<$Res>
    implements $DeleteTaskInputCopyWith<$Res> {
  factory _$$DeleteTaskInputImplCopyWith(_$DeleteTaskInputImpl value,
          $Res Function(_$DeleteTaskInputImpl) then) =
      __$$DeleteTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$DeleteTaskInputImplCopyWithImpl<$Res>
    extends _$DeleteTaskInputCopyWithImpl<$Res, _$DeleteTaskInputImpl>
    implements _$$DeleteTaskInputImplCopyWith<$Res> {
  __$$DeleteTaskInputImplCopyWithImpl(
      _$DeleteTaskInputImpl _value, $Res Function(_$DeleteTaskInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DeleteTaskInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteTaskInputImpl implements _DeleteTaskInput {
  const _$DeleteTaskInputImpl({this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'DeleteTaskInput(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskInputImplCopyWith<_$DeleteTaskInputImpl> get copyWith =>
      __$$DeleteTaskInputImplCopyWithImpl<_$DeleteTaskInputImpl>(
          this, _$identity);
}

abstract class _DeleteTaskInput implements DeleteTaskInput {
  const factory _DeleteTaskInput({final String? id}) = _$DeleteTaskInputImpl;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTaskInputImplCopyWith<_$DeleteTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
