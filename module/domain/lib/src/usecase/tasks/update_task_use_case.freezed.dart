// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateTaskInput {
  TasksModel? get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTaskInputCopyWith<UpdateTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskInputCopyWith<$Res> {
  factory $UpdateTaskInputCopyWith(
          UpdateTaskInput value, $Res Function(UpdateTaskInput) then) =
      _$UpdateTaskInputCopyWithImpl<$Res, UpdateTaskInput>;
  @useResult
  $Res call({TasksModel? request});
}

/// @nodoc
class _$UpdateTaskInputCopyWithImpl<$Res, $Val extends UpdateTaskInput>
    implements $UpdateTaskInputCopyWith<$Res> {
  _$UpdateTaskInputCopyWithImpl(this._value, this._then);

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
              as TasksModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskInputImplCopyWith<$Res>
    implements $UpdateTaskInputCopyWith<$Res> {
  factory _$$UpdateTaskInputImplCopyWith(_$UpdateTaskInputImpl value,
          $Res Function(_$UpdateTaskInputImpl) then) =
      __$$UpdateTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksModel? request});
}

/// @nodoc
class __$$UpdateTaskInputImplCopyWithImpl<$Res>
    extends _$UpdateTaskInputCopyWithImpl<$Res, _$UpdateTaskInputImpl>
    implements _$$UpdateTaskInputImplCopyWith<$Res> {
  __$$UpdateTaskInputImplCopyWithImpl(
      _$UpdateTaskInputImpl _value, $Res Function(_$UpdateTaskInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$UpdateTaskInputImpl(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TasksModel?,
    ));
  }
}

/// @nodoc

class _$UpdateTaskInputImpl implements _UpdateTaskInput {
  const _$UpdateTaskInputImpl({this.request});

  @override
  final TasksModel? request;

  @override
  String toString() {
    return 'UpdateTaskInput(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskInputImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskInputImplCopyWith<_$UpdateTaskInputImpl> get copyWith =>
      __$$UpdateTaskInputImplCopyWithImpl<_$UpdateTaskInputImpl>(
          this, _$identity);
}

abstract class _UpdateTaskInput implements UpdateTaskInput {
  const factory _UpdateTaskInput({final TasksModel? request}) =
      _$UpdateTaskInputImpl;

  @override
  TasksModel? get request;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskInputImplCopyWith<_$UpdateTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
