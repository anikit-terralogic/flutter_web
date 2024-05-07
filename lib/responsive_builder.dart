import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'src/presentation/ui/homepage/homepage/homepage.dart';

class ResponsiveBuilderHomepage extends StatefulWidget {
  const ResponsiveBuilderHomepage({super.key});

  @override
  State<ResponsiveBuilderHomepage> createState() =>
      _ResponsiveBuilderHomepageState();
}

class _ResponsiveBuilderHomepageState extends State<ResponsiveBuilderHomepage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints:
          const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (BuildContext context) => const Homepage(),
      desktop: (BuildContext context) => const Homepage(),
    );
  }
}
