import 'package:flutter/material.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';

class AppWidgets {
  ///
  buttonWidget(
    BuildContext context,
    Color dynamicColor,
    String customText,
    Color textColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: dynamicColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(36.0, 13.0, 36.0, 13.0),
        child: Text(
          customText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

downloadCvWidget(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: ThemeColorName.whiteColors,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: ThemeColorName.nameColor)),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(36.0, 13.0, 36.0, 13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Download CV",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: ThemeColorName.nameColor,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Image.asset("assets/images/download.png"),
        ],
      ),
    ),
  );
}
