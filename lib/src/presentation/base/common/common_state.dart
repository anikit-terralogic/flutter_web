import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';
part 'common_state.freezed.dart';

@freezed
class CommonState extends BaseBlocState with _$CommonState {
  const factory CommonState({
    @Default(false) bool isLoading,
    @Default(null) MessageDialogModel? messageDialog,
    @Default(true) bool hasNetworkConnection,
  }) = _CommonState;
}
