// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LanguageTranslation {
  LanguageTranslation();

  static LanguageTranslation? _current;

  static LanguageTranslation get current {
    assert(_current != null,
        'No instance of LanguageTranslation was loaded. Try to initialize the LanguageTranslation delegate before accessing LanguageTranslation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LanguageTranslation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LanguageTranslation();
      LanguageTranslation._current = instance;

      return instance;
    });
  }

  static LanguageTranslation of(BuildContext context) {
    final instance = LanguageTranslation.maybeOf(context);
    assert(instance != null,
        'No instance of LanguageTranslation present in the widget tree. Did you add LanguageTranslation.delegate in localizationsDelegates?');
    return instance!;
  }

  static LanguageTranslation? maybeOf(BuildContext context) {
    return Localizations.of<LanguageTranslation>(context, LanguageTranslation);
  }

  /// `api error`
  String get error {
    return Intl.message(
      'api error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Some thing went wrong`
  String get err_something_went_wrong {
    return Intl.message(
      'Some thing went wrong',
      name: 'err_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `We apologise for the inconvenience,\nplease check your internet connection`
  String get no_internet_subtext {
    return Intl.message(
      'We apologise for the inconvenience,\nplease check your internet connection',
      name: 'no_internet_subtext',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `No Internet connection`
  String get no_internet {
    return Intl.message(
      'No Internet connection',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to UpTodo`
  String get welcome_to_up_to_do {
    return Intl.message(
      'Welcome to UpTodo',
      name: 'welcome_to_up_to_do',
      desc: '',
      args: [],
    );
  }

  /// `Please login to your account or create new account to continue`
  String get please_login_to_your_account_or_create_new_account_to_continue {
    return Intl.message(
      'Please login to your account or create new account to continue',
      name: 'please_login_to_your_account_or_create_new_account_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get login {
    return Intl.message(
      'LOGIN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `CREATE ACCOUNT`
  String get create_Account {
    return Intl.message(
      'CREATE ACCOUNT',
      name: 'create_Account',
      desc: '',
      args: [],
    );
  }

  /// `Change app color`
  String get change_app_color {
    return Intl.message(
      'Change app color',
      name: 'change_app_color',
      desc: '',
      args: [],
    );
  }

  /// `Change app typography`
  String get change_app_typography {
    return Intl.message(
      'Change app typography',
      name: 'change_app_typography',
      desc: '',
      args: [],
    );
  }

  /// `Change app language`
  String get change_app_language {
    return Intl.message(
      'Change app language',
      name: 'change_app_language',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get setting {
    return Intl.message(
      'Settings',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get import {
    return Intl.message(
      'Import',
      name: 'import',
      desc: '',
      args: [],
    );
  }

  /// `Import from Google calendar`
  String get import_from_google_calendar {
    return Intl.message(
      'Import from Google calendar',
      name: 'import_from_google_calendar',
      desc: '',
      args: [],
    );
  }

  /// `UpTodo`
  String get splash_screen_message {
    return Intl.message(
      'UpTodo',
      name: 'splash_screen_message',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message(
      'SKIP',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `BACK`
  String get back {
    return Intl.message(
      'BACK',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `NEXT`
  String get next {
    return Intl.message(
      'NEXT',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Index`
  String get appbarTitle {
    return Intl.message(
      'Index',
      name: 'appbarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Index`
  String get index_homepage {
    return Intl.message(
      'Index',
      name: 'index_homepage',
      desc: '',
      args: [],
    );
  }

  /// `Calendar`
  String get calendar {
    return Intl.message(
      'Calendar',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `Focuse`
  String get focuse {
    return Intl.message(
      'Focuse',
      name: 'focuse',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to do today?`
  String get addtask_message {
    return Intl.message(
      'What do you want to do today?',
      name: 'addtask_message',
      desc: '',
      args: [],
    );
  }

  /// `Tap + to add your tasks`
  String get addtask_message_second {
    return Intl.message(
      'Tap + to add your tasks',
      name: 'addtask_message_second',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Manage your tasks`
  String get onboarding_screen_one_heading {
    return Intl.message(
      'Manage your tasks',
      name: 'onboarding_screen_one_heading',
      desc: '',
      args: [],
    );
  }

  /// `Create daily routine`
  String get onboarding_screen_two_heading {
    return Intl.message(
      'Create daily routine',
      name: 'onboarding_screen_two_heading',
      desc: '',
      args: [],
    );
  }

  /// `Orgonaize your tasks`
  String get onboarding_screen_three_heading {
    return Intl.message(
      'Orgonaize your tasks',
      name: 'onboarding_screen_three_heading',
      desc: '',
      args: [],
    );
  }

  /// `You can easily manage all of your daily tasks in DoMe for free`
  String get onboarding_screen_one_subheading {
    return Intl.message(
      'You can easily manage all of your daily tasks in DoMe for free',
      name: 'onboarding_screen_one_subheading',
      desc: '',
      args: [],
    );
  }

  /// `In Uptodo  you can create your personalized routine to stay productive`
  String get onboarding_screen_two_subheading {
    return Intl.message(
      'In Uptodo  you can create your personalized routine to stay productive',
      name: 'onboarding_screen_two_subheading',
      desc: '',
      args: [],
    );
  }

  /// `You can organize your daily tasks by adding your tasks into separate categories`
  String get onboarding_screen_three_subheading {
    return Intl.message(
      'You can organize your daily tasks by adding your tasks into separate categories',
      name: 'onboarding_screen_three_subheading',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<LanguageTranslation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LanguageTranslation> load(Locale locale) =>
      LanguageTranslation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
