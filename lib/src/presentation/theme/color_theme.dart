import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../gen/colors.gen.dart';
import '../../../main.dart';



class ThemeColorName {
  static Color getColor({required Color lightColor, required Color darkColor, required Color contrastColor}) {
    switch (themeManager.currentTheme) {
      case AppearanceMode.light:
        return lightColor;
      case AppearanceMode.dark:
        return darkColor;
      case AppearanceMode.system:
        return SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.dark ? darkColor : lightColor;
      case AppearanceMode.contrast:
        return contrastColor;
      default:
        return lightColor;
    }
  }

  static Color get customButtonColor => getColor(
      lightColor: ColorName.borderColor,
      darkColor: ColorName.borderColor,
      contrastColor: ColorName.borderColor);

  // static Color get textFieldText => getColor(
  //     lightColor: ColorName.color0C1121,
  //     darkColor: ColorName.colorCAD7FF,
  //     contrastColor: ColorName.colorDEDB21);

  // static Color get textFieldNoFocus => getColor(
  //     lightColor: ColorName.color5A6482,
  //     darkColor: ColorName.colorCAD7FF,
  //     contrastColor: ColorName.colorDEDB21);

  // static Color get textFieldHint => getColor(
  //     lightColor: ColorName.color5A6482,
  //     darkColor: ColorName.color5A6482,
  //     contrastColor: ColorName.color838110);


  // static Color get errorText => getColor(
  //     lightColor: ColorName.colorCC0A0A,
  //     darkColor: ColorName.colorF17176,
  //     contrastColor: ColorName.colorDEDB21);

  // static Color get textFieldFocus => getColor(
  //     lightColor: ColorName.color0C1121,
  //     darkColor: ColorName.color5A6482,
  //     contrastColor: ColorName.colorDEDB21);


  // static Color get textFieldDisable => getColor(
  //     lightColor: ColorName.colorDDDDDD,
  //     darkColor: ColorName.color787878,
  //     contrastColor: ColorName.color838110);


  // static Color get textFieldEnable => getColor(
  //     lightColor: ColorName.color959FBE,
  //     darkColor: ColorName.color5A6482,
  //     contrastColor: ColorName.colorDEDB21);


  // static Color get background => getColor(
  //     lightColor: ColorName.backgroundColor,
  //     darkColor: ColorName.color13192A,
  //     contrastColor: ColorName.black);

  // static Color get cursor => getColor(
  //     lightColor: ColorName.colorA3ADCD,
  //     darkColor: ColorName.colorA3ADCD,
  //     contrastColor: ColorName.color838110);


  // static Color get dialogText => getColor(
  //     lightColor: ColorName.color202946,
  //     darkColor: ColorName.colorCAD7FF,
  //     contrastColor: ColorName.colorDEDB21);
}
