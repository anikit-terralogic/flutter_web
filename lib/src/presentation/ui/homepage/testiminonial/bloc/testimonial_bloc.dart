import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/testiminonial/bloc/testimonial_event.dart';
import '../../../../base/bloc/base_bloc.dart';
import 'testimonial_state.dart';

@injectable
class TestimonialPageBloc extends BaseBloc<TestimonialPageEvent, TestimonialPageState> {
  TestimonialPageBloc() : super(const TestimonialPageState());
}