import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/aboutme/bloc/aboutus_event.dart';
import '../../../../base/bloc/base_bloc.dart';
import 'aboutus_state.dart';

@injectable
class AboutUsPageBloc extends BaseBloc<AboutUsPageEvent, AboutUsPageState> {
  AboutUsPageBloc() : super(const AboutUsPageState());
}
