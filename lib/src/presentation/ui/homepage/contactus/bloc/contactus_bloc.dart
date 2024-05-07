import 'package:injectable/injectable.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_event.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_state.dart';
import '../../../../base/bloc/base_bloc.dart';
import 'contactus_event.dart';
import 'contactus_state.dart';

@injectable
class ContactUsPageBloc extends BaseBloc<ContactUsPageEvent, ContactUsPageState> {
  ContactUsPageBloc() : super(const ContactUsPageState());
}