// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTaskInput {
  TasksModel? get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskInputCopyWith<AddTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskInputCopyWith<$Res> {
  factory $AddTaskInputCopyWith(
          AddTaskInput value, $Res Function(AddTaskInput) then) =
      _$AddTaskInputCopyWithImpl<$Res, AddTaskInput>;
  @useResult
  $Res call({TasksModel? request});
}

/// @nodoc
class _$AddTaskInputCopyWithImpl<$Res, $Val extends AddTaskInput>
    implements $AddTaskInputCopyWith<$Res> {
  _$AddTaskInputCopyWithImpl(this._value, this._then);

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
abstract class _$$AddTaskInputImplCopyWith<$Res>
    implements $AddTaskInputCopyWith<$Res> {
  factory _$$AddTaskInputImplCopyWith(
          _$AddTaskInputImpl value, $Res Function(_$AddTaskInputImpl) then) =
      __$$AddTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksModel? request});
}

/// @nodoc
class __$$AddTaskInputImplCopyWithImpl<$Res>
    extends _$AddTaskInputCopyWithImpl<$Res, _$AddTaskInputImpl>
    implements _$$AddTaskInputImplCopyWith<$Res> {
  __$$AddTaskInputImplCopyWithImpl(
      _$AddTaskInputImpl _value, $Res Function(_$AddTaskInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$AddTaskInputImpl(
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TasksModel?,
    ));
  }
}

/// @nodoc

class _$AddTaskInputImpl implements _AddTaskInput {
  const _$AddTaskInputImpl({this.request});

  @override
  final TasksModel? request;

  @override
  String toString() {
    return 'AddTaskInput(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskInputImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskInputImplCopyWith<_$AddTaskInputImpl> get copyWith =>
      __$$AddTaskInputImplCopyWithImpl<_$AddTaskInputImpl>(this, _$identity);
}

abstract class _AddTaskInput implements AddTaskInput {
  const factory _AddTaskInput({final TasksModel? request}) = _$AddTaskInputImpl;

  @override
  TasksModel? get request;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskInputImplCopyWith<_$AddTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
