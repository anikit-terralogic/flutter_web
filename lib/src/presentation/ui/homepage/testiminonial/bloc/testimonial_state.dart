import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc/base_bloc_state.dart';

part 'testimonial_state.freezed.dart';

@freezed
class TestimonialPageState extends BaseBlocState with _$TestimonialPageState {
  const factory TestimonialPageState() = _TestimonialPageState;
}
