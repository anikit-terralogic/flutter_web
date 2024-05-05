import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../src/presentation/ui/homepage/homepage.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(path: '/', page: Homepage, initial: true),
])
class AppRouter extends _$AppRouter {}
