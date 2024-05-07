import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'services_state.freezed.dart';

@freezed
class ServicesPageState extends BaseBlocState with _$ServicesPageState {
  const factory ServicesPageState() = _ServicesPageState;
}
