// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_task_by_title_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetTaskByTitleInput {
  String? get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetTaskByTitleInputCopyWith<GetTaskByTitleInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTaskByTitleInputCopyWith<$Res> {
  factory $GetTaskByTitleInputCopyWith(
          GetTaskByTitleInput value, $Res Function(GetTaskByTitleInput) then) =
      _$GetTaskByTitleInputCopyWithImpl<$Res, GetTaskByTitleInput>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _$GetTaskByTitleInputCopyWithImpl<$Res, $Val extends GetTaskByTitleInput>
    implements $GetTaskByTitleInputCopyWith<$Res> {
  _$GetTaskByTitleInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTaskByTitleInputImplCopyWith<$Res>
    implements $GetTaskByTitleInputCopyWith<$Res> {
  factory _$$GetTaskByTitleInputImplCopyWith(_$GetTaskByTitleInputImpl value,
          $Res Function(_$GetTaskByTitleInputImpl) then) =
      __$$GetTaskByTitleInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$GetTaskByTitleInputImplCopyWithImpl<$Res>
    extends _$GetTaskByTitleInputCopyWithImpl<$Res, _$GetTaskByTitleInputImpl>
    implements _$$GetTaskByTitleInputImplCopyWith<$Res> {
  __$$GetTaskByTitleInputImplCopyWithImpl(_$GetTaskByTitleInputImpl _value,
      $Res Function(_$GetTaskByTitleInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$GetTaskByTitleInputImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetTaskByTitleInputImpl implements _GetTaskByTitleInput {
  const _$GetTaskByTitleInputImpl(this.title);

  @override
  final String? title;

  @override
  String toString() {
    return 'GetTaskByTitleInput(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskByTitleInputImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskByTitleInputImplCopyWith<_$GetTaskByTitleInputImpl> get copyWith =>
      __$$GetTaskByTitleInputImplCopyWithImpl<_$GetTaskByTitleInputImpl>(
          this, _$identity);
}

abstract class _GetTaskByTitleInput implements GetTaskByTitleInput {
  const factory _GetTaskByTitleInput(final String? title) =
      _$GetTaskByTitleInputImpl;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$GetTaskByTitleInputImplCopyWith<_$GetTaskByTitleInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
