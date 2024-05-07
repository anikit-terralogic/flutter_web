import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'contactus_state.freezed.dart';

@freezed
class ContactUsPageState extends BaseBlocState with _$ContactUsPageState {
  const factory ContactUsPageState() = _ContactUsPageState;
}
