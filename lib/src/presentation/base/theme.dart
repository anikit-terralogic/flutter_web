import 'package:flutter/material.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';

TextTheme _buildTextTheme() {
  return TextTheme(
    /// black color
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColorName.headline,
      fontSize: 50.0,
    ),

    titleMedium: TextStyle(
      fontWeight: FontWeight.w400,
      color: ThemeColorName.headline,
      fontSize: 18.0,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColorName.headline,
      fontSize: 20.0,
    ),

    headlineMedium: TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColorName.headline,
      fontSize: 25.0,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w400,
      color: ThemeColorName.headline,
      fontSize: 25.0,
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColorName.headline,
      fontSize: 70.0,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w900,
      color: ThemeColorName.headline,
      fontSize: 23.0,
    ),

    ///
    /// blue color
    labelLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColorName.nameColor,
      fontSize: 70.0,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColorName.nameColor,
      fontSize: 50.0,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColorName.nameColor,
      fontSize: 25.0,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColorName.nameColor,
      fontSize: 20.0,
    ),

    /// name color
    displayLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColorName.whiteColors,
      fontSize: 50.0,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColorName.whiteColors,
      fontSize: 20.0,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w400,
      color: ThemeColorName.whiteColors,
      fontSize: 20.0,
    ),

    /// milestone
    labelSmall: TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColorName.mileStoneColor,
      fontSize: 18.0,
    ),
  );
}

class CustomTransitionBuilder extends PageTransitionsBuilder {
  const CustomTransitionBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    animation = CurvedAnimation(
        curve: Curves.fastEaseInToSlowEaseOut, parent: animation);
    return FadeTransition(opacity: animation, child: child);
  }
}
