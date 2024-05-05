// import 'package:flutter/material.dart';

// import 'color_theme.dart';

// // import '../../../gen/fonts.gen.dart';
// // import 'color_theme.dart';

// // final ThemeData lightTheme = ThemeData(
// //     primarySwatch: Colors.blue,
// //     primaryColor: ColorName.color0C1121,
// //     scaffoldBackgroundColor: ColorName.colorFDF4EA,
// //     fontFamily: FontFamily.lato,
// //     pageTransitionsTheme: const PageTransitionsTheme(
// //       builders: {
// //         TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
// //         // TargetPlatform.android: CustomTransitionBuilder(),
// //       },
// //     ),
// //     appBarTheme: const AppBarTheme(
// //       backgroundColor: Colors.transparent,
// //       elevation: 0,
// //       iconTheme: IconThemeData(color: ColorName.accentLightColor),
// //     ),
// //     buttonTheme: const ButtonThemeData(
// //       buttonColor: ColorName.colorE7131A,
// //       disabledColor: ColorName.gray70,
// //     ),
// //     textTheme: _buildTextTheme(AppearanceMode.light),
// //     colorScheme: lightThemeColors(),
// //     unselectedWidgetColor: ColorName.color0C1121,
// //     dividerColor: ColorName.colorE3e3e3,
// //     dialogTheme: const DialogTheme(backgroundColor: ColorName.white),
// //     bottomSheetTheme:
// //         const BottomSheetThemeData(backgroundColor: Colors.transparent));

// // final ThemeData darkTheme = ThemeData(
// //     primarySwatch: Colors.blueGrey,
// //     primaryColor: ColorName.colorCAD7FF,
// //     scaffoldBackgroundColor: ColorName.color080C18,
// //     fontFamily: FontFamily.lato,
// //     appBarTheme: const AppBarTheme(
// //       backgroundColor: Colors.transparent,
// //       elevation: 0,
// //       iconTheme: IconThemeData(color: ColorName.white),
// //     ),
// //     buttonTheme: const ButtonThemeData(
// //       buttonColor: ColorName.colorE7131A,
// //       disabledColor: ColorName.gray70,
// //     ),
// //     textTheme: _buildTextTheme(AppearanceMode.dark),
// //     colorScheme: darkThemeColors(),
// //     dividerColor: ColorName.colorE3e3e3,
// //     unselectedWidgetColor: ColorName.colorCAD7FF,
// //     dialogTheme: const DialogTheme(backgroundColor: ColorName.color13192A),
// //     bottomSheetTheme:
// //         const BottomSheetThemeData(backgroundColor: Colors.transparent));

// // final ThemeData contrastTheme = ThemeData(
// //     primarySwatch: Colors.blueGrey,
// //     primaryColor: ColorName.colorDEDB21,
// //     scaffoldBackgroundColor: ColorName.black,
// //     fontFamily: FontFamily.lato,
// //     appBarTheme: const AppBarTheme(
// //       backgroundColor: Colors.transparent,
// //       elevation: 0,
// //       iconTheme: IconThemeData(color: ColorName.white),
// //     ),
// //     buttonTheme: const ButtonThemeData(
// //       buttonColor: ColorName.colorDEDB21,
// //       disabledColor: ColorName.color838110,
// //     ),
// //     textTheme: _buildTextTheme(AppearanceMode.contrast),
// //     colorScheme: contrastThemeColors(),
// //     dividerColor: ColorName.colorDEDB21,
// //     unselectedWidgetColor: ColorName.colorDEDB21,
// //     dialogTheme: const DialogTheme(backgroundColor: ColorName.color1A1A1A),
// //     bottomSheetTheme:
// //         const BottomSheetThemeData(backgroundColor: Colors.transparent));

// // Color getTextColor(AppearanceMode mode) {
// //   switch (mode) {
// //     case AppearanceMode.light:
// //       return ColorName.subTextColor;
// //     case AppearanceMode.dark:
// //       return ColorName.colorCAD7FF;
// //     case AppearanceMode.system:
// //       var brightness =
// //           SchedulerBinding.instance.platformDispatcher.platformBrightness;
// //       return brightness == Brightness.light
// //           ? ColorName.subTextColor
// //           : ColorName.colorCAD7FF;
// //     case AppearanceMode.contrast:
// //       return ColorName.colorDEDB21;
// //   }
// // }

// TextTheme buildTextTheme() {
//   return const TextTheme(

//       /// headline color
//       titleMedium: TextStyle(
//         fontWeight: FontWeight.w400,
//         fontSize: 20.0,
//       ),
//       displaySmall: TextStyle(
//         fontWeight: FontWeight.w400,
//         fontSize: 25.0,
//       ),
//       bodySmall: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 20.0,
//       ),
//       titleSmall: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 18.0,
//       ),
//       headlineMedium: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 25.0,
//       ),
//       bodyMedium: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 40.0,
//       ),
//       bodyLarge: TextStyle(
//         fontWeight: FontWeight.w700,
//         fontSize: 50.0,
//       ),
//       displayLarge: TextStyle(
//         fontWeight: FontWeight.w700,
//         fontSize: 70.0,
//       ),
//       displayMedium: TextStyle(
//         fontWeight: FontWeight.w700,
//         fontSize: 60.0,
//       ),
//       headlineLarge: TextStyle(
//         fontWeight: FontWeight.w900,
//         fontSize: 25.0,
//       ),
//       headlineSmall: TextStyle(
//         fontWeight: FontWeight.w900,
//         fontSize: 20.0,
//       ), );
// }

// class CustomTransitionBuilder extends PageTransitionsBuilder {
//   const CustomTransitionBuilder();

//   @override
//   Widget buildTransitions<T>(
//       PageRoute<T> route,
//       BuildContext context,
//       Animation<double> animation,
//       Animation<double> secondaryAnimation,
//       Widget child) {
//     animation = CurvedAnimation(
//         curve: Curves.fastEaseInToSlowEaseOut, parent: animation);
//     return FadeTransition(opacity: animation, child: child);
//   }
// }
