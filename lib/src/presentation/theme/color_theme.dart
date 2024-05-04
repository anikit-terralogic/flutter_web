import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../gen/colors.gen.dart';
import '../../../main.dart';

class ThemeColorName {
  static Color getColor(
      {required Color lightColor,
      required Color darkColor,
      required Color contrastColor}) {
    switch (themeManager.currentTheme) {
      case AppearanceMode.light:
        return lightColor;
      case AppearanceMode.dark:
        return darkColor;
      case AppearanceMode.system:
        return SchedulerBinding
                    .instance.platformDispatcher.platformBrightness ==
                Brightness.dark
            ? darkColor
            : lightColor;
      case AppearanceMode.contrast:
        return contrastColor;
      default:
        return lightColor;
    }
  }

  static Color get nameColor => getColor(
      lightColor: ColorName.nameColor,
      darkColor: ColorName.nameColor,
      contrastColor: ColorName.nameColor);

  static Color get headline => getColor(
      lightColor: ColorName.headline,
      darkColor: ColorName.headline,
      contrastColor: ColorName.headline);

  static Color get whiteColors => getColor(
      lightColor: ColorName.whiteColor,
      darkColor: ColorName.whiteColor,
      contrastColor: ColorName.whiteColor);

  static Color get skillcolor => getColor(
      lightColor: ColorName.skillcolor,
      darkColor: ColorName.skillcolor,
      contrastColor: ColorName.skillcolor);

  static Color get greycolor => getColor(
      lightColor: ColorName.greycolor,
      darkColor: ColorName.greycolor,
      contrastColor: ColorName.greycolor);

  static Color get mileStoneColor => getColor(
      lightColor: ColorName.mileStoneColor,
      darkColor: ColorName.mileStoneColor,
      contrastColor: ColorName.mileStoneColor);

  static Color get testimonialColor => getColor(
      lightColor: ColorName.testimonialColor,
      darkColor: ColorName.testimonialColor,
      contrastColor: ColorName.testimonialColor);

  static Color get technology => getColor(
      lightColor: ColorName.technology,
      darkColor: ColorName.technology,
      contrastColor: ColorName.technology);

  static Color get borderColor => getColor(
      lightColor: ColorName.borderColor,
      darkColor: ColorName.borderColor,
      contrastColor: ColorName.borderColor);

  static Color get submit => getColor(
      lightColor: ColorName.submit,
      darkColor: ColorName.submit,
      contrastColor: ColorName.submit);

  static Color get followUsColor => getColor(
      lightColor: ColorName.followUsColor,
      darkColor: ColorName.followUsColor,
      contrastColor: ColorName.followUsColor);
}
