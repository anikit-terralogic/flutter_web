// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonState {
  bool get isLoading => throw _privateConstructorUsedError;
  MessageDialogModel? get messageDialog => throw _privateConstructorUsedError;
  bool get hasNetworkConnection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonStateCopyWith<CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res, CommonState>;
  @useResult
  $Res call(
      {bool isLoading,
      MessageDialogModel? messageDialog,
      bool hasNetworkConnection});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res, $Val extends CommonState>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? messageDialog = freezed,
    Object? hasNetworkConnection = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageDialog: freezed == messageDialog
          ? _value.messageDialog
          : messageDialog // ignore: cast_nullable_to_non_nullable
              as MessageDialogModel?,
      hasNetworkConnection: null == hasNetworkConnection
          ? _value.hasNetworkConnection
          : hasNetworkConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res>
    implements $CommonStateCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(
          _$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      MessageDialogModel? messageDialog,
      bool hasNetworkConnection});
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res>
    extends _$CommonStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(
      _$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? messageDialog = freezed,
    Object? hasNetworkConnection = null,
  }) {
    return _then(_$CommonStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageDialog: freezed == messageDialog
          ? _value.messageDialog
          : messageDialog // ignore: cast_nullable_to_non_nullable
              as MessageDialogModel?,
      hasNetworkConnection: null == hasNetworkConnection
          ? _value.hasNetworkConnection
          : hasNetworkConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommonStateImpl implements _CommonState {
  const _$CommonStateImpl(
      {this.isLoading = false,
      this.messageDialog = null,
      this.hasNetworkConnection = true});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final MessageDialogModel? messageDialog;
  @override
  @JsonKey()
  final bool hasNetworkConnection;

  @override
  String toString() {
    return 'CommonState(isLoading: $isLoading, messageDialog: $messageDialog, hasNetworkConnection: $hasNetworkConnection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.messageDialog, messageDialog) ||
                other.messageDialog == messageDialog) &&
            (identical(other.hasNetworkConnection, hasNetworkConnection) ||
                other.hasNetworkConnection == hasNetworkConnection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, messageDialog, hasNetworkConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState(
      {final bool isLoading,
      final MessageDialogModel? messageDialog,
      final bool hasNetworkConnection}) = _$CommonStateImpl;

  @override
  bool get isLoading;
  @override
  MessageDialogModel? get messageDialog;
  @override
  bool get hasNetworkConnection;
  @override
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
