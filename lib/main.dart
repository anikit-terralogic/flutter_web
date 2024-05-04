import 'package:flutter/material.dart';
import 'initializer/app_initializer.dart';
import 'src/config/app_config.dart';
import 'src/presentation/app/app.dart';
import 'src/presentation/theme/theme_manager.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();

  runApp(const Application());
}
var themeManager = ThemeManager();

