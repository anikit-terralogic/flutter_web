import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'aboutus_state.freezed.dart';

@freezed
class AboutUsPageState extends BaseBlocState with _$AboutUsPageState {
  const factory AboutUsPageState() = _AboutUsPageState;
}
