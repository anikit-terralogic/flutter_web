import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/todo_homepage.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(path: '/', page: ToDoHomepage, initial: true),
  // AutoRoute(path: '/WelcomePage', page: WelcomePage),
  // AutoRoute(path: '/OnboardingScreen', page: OnboardingScreen),
  // AutoRoute(path: '/homepage', page: TodoHomepage),
  //   AutoRoute(path: '/RegisterPage', page: RegisterPage, ),
  //   AutoRoute(path: '/Settings', page: Settings),
  //   AutoRoute(path: '/LoginPage', page: LoginPage),
  //   AutoRoute(path: '/IndexPage', page: IndexPage),
  //   AutoRoute(path: '/CreateNewCategoryPage', page: CreateNewCategoryPage),
  // AutoRoute(path: '/TaskScreen', page: TaskScreen)
])
class AppRouter extends _$AppRouter {}
