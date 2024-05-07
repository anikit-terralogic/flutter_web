import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'homepage_state.freezed.dart';

@freezed
class HomePageState extends BaseBlocState with _$HomePageState {
  const factory HomePageState() = _HomePageState;
}
