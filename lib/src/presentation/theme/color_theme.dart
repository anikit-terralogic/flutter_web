import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class ThemeColorName {
  // static Color getColor(
  //     {required Color lightColor,
  //     required Color darkColor,
  //     required Color contrastColor}) {
  //   switch (themeManager.currentTheme) {
  //     case AppearanceMode.light:
  //       return lightColor;
  //     case AppearanceMode.dark:
  //       return darkColor;
  //     case AppearanceMode.system:
  //       return SchedulerBinding
  //                   .instance.platformDispatcher.platformBrightness ==
  //               Brightness.dark
  //           ? darkColor
  //           : lightColor;
  //     case AppearanceMode.contrast:
  //       return contrastColor;
  //     default:
  //       return lightColor;
  //   }
  // }

  static Color get nameColor => ColorName.nameColor;
  static Color get headline => ColorName.headline;

  static Color get whiteColors => ColorName.whiteColor;

  static Color get skillcolor => ColorName.skillcolor;

  static Color get greycolor => ColorName.greycolor;

  static Color get mileStoneColor => ColorName.mileStoneColor;

  static Color get testimonialColor => ColorName.testimonialColor;

  static Color get technology => ColorName.technology;

  static Color get borderColor => ColorName.borderColor;

  static Color get submit => ColorName.submit;

  static Color get followUsColor => ColorName.followUsColor;
}
