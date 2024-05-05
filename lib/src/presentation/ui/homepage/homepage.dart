import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/aboutme.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/milestones.dart';

import '../../widget/app_widgets.dart';
import 'contactus.dart';
import 'projects.dart';
import 'services.dart';
import 'testimonial.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _PortfolioHomepageState();
}

class _PortfolioHomepageState extends State<Homepage> {
  bool showHomeContent = false;

  List<String> tabs = ["Home", "About Me", "Services", "Blog", "Contact Us"];

  List<String> techStACK = [
    "assets/images/logo-1.png",
    "assets/images/logo-2.png",
    "assets/images/logo-3.png",
    "assets/images/logo-5.png",
    "assets/images/logo-6.png",
  ];

  AppWidgets appWidgets = AppWidgets();

  int currentIndex = 0;

  /// Portfolio for web and desktop
  portfolioForMobile() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: ThemeColorName.borderColor)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset(
              fit: BoxFit.cover,
              "assets/images/background.jpg",
              width: 350,
              height: 354,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10.0, top: 15.0),
          child: Text(
            "Welcome to my Portfolio",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(),
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Hi I’m \n',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              ),
              TextSpan(
                  text: 'Robert Junior\n',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith()),

              // Product Designer
              TextSpan(
                  text: 'Product Designer',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith()),
            ],
          ),
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 624),
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(),
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppWidgets().buttonWidget(
                  context,
                  ThemeColorName.nameColor,
                  "Hire Me!",
                  ThemeColorName.whiteColors,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: downloadCvWidget(context)),
            ],
          ),
        ),
      ],
    );
  }

  portfolioDeskTop() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 83, vertical: 83),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text("Welcome to my Portfolio",
                    style:
                        Theme.of(context).textTheme.headlineMedium?.copyWith()),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hi I’m \n',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith()),
                    TextSpan(
                        text: 'Robert Junior\n',
                        style:
                            Theme.of(context).textTheme.labelLarge?.copyWith()),

                    // Product Designer
                    TextSpan(
                        text: 'Product Designer',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith()),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 624),
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: Row(
                  children: [
                    AppWidgets().buttonWidget(
                      context,
                      ThemeColorName.nameColor,
                      "Hire Me!",
                      ThemeColorName.whiteColors,
                    ),
                    const SizedBox(
                      width: 45.0,
                    ),
                    downloadCvWidget(context)
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 100),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: ThemeColorName.borderColor)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  fit: BoxFit.cover,
                  "assets/images/background.jpg",
                  width: 553,
                  height: 560,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

//// Languauges Displayed
  Widget languagesDesktop() {
    return Row(
      children: List.generate(
          tabs.length,
          (index) => Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 65),
                  child: Image.asset(techStACK[index]),
                ),
              )),
    );
  }

  Widget languaguesMobile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(techStACK[0]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(techStACK[1]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(techStACK[2]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(techStACK[3]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(techStACK[4]),
        ),
      ],
    );
  }

  /// header addded

  headerForMobile() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                  width: 6.0), // Add some spacing between logo and text
              Text("AeroVision",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith()),
            ],
          ),
          Image.asset(
            "assets/images/menu.png",
            width: 32,
            height: 32,
          )
        ],
      ),
    );
  }

  headerForDesktop() {
    return Container(
      margin: const EdgeInsets.only(left: 65, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo and AeroVision text
          Row(
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                  width: 6.0), // Add some spacing between logo and text
              Text("AeroVision",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith()),
            ],
          ),

          // Tabs
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: tabs.map((tab) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(tab,
                      style:
                          Theme.of(context).textTheme.labelSmall!.copyWith()),
                );
              }).toList(),
            ),
          ),

          // Let's chat button
          Container(
            margin: const EdgeInsets.only(left: 130, right: 65.0),
            child: AppWidgets().buttonWidget(
              context,
              ThemeColorName.nameColor,
              "Let’s chat",
              ThemeColorName.whiteColors,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          getValueForScreenType<Widget>(
            context: context,
            mobile: headerForMobile(),
            desktop: headerForDesktop(),
          ), //// welcome to portfolio
          getValueForScreenType<Widget>(
            context: context,
            mobile: portfolioForMobile(),
            desktop: portfolioDeskTop(),
          ),

          /// languages added
          Container(
              decoration: BoxDecoration(
                color: ThemeColorName.technology,
              ),
              child: getValueForScreenType<Widget>(
                context: context,
                mobile: languaguesMobile(),
                tablet: languagesDesktop(),
                desktop: languagesDesktop(),
              )),
          const AboutMeSection(),
          const ServicesPage(),
          const Milestones(),
          const Projects(),
          const TestimonialPage(),
          const ContactUsPage(),
        ],
      ),
    );
  }
}
