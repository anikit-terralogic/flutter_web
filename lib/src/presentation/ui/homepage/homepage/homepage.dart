import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/homepage/bloc/homepage_bloc.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/testiminonial/testimonial.dart';

import '../../../base/bloc_page/base_page_state.dart';
import '../../../widget/app_widgets.dart';
import '../aboutme/aboutme.dart';
import '../contactus/contactus.dart';
import '../milestones/milestones.dart';
import '../projects/projects.dart';
import '../services/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends BasePageState<Homepage, HomePageBloc> {
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
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ThemeColorName.headline,
                fontSize: 20,
                fontWeight: FontWeight.w600),
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
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ThemeColorName.headline,
                        fontWeight: FontWeight.w700,
                        fontSize: 50.0,
                      )),
              TextSpan(
                  text: 'Robert Junior\n',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ThemeColorName.nameColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 50.0,
                      )),

              // Product Designer
              TextSpan(
                  text: 'Product Designer',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ThemeColorName.headline,
                        fontWeight: FontWeight.w700,
                        fontSize: 50.0,
                      )),
            ],
          ),
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 624),
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ThemeColorName.headline,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
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
      margin: const EdgeInsets.only(top: 83, left: 81, right: 81),
      // margin: const EdgeInsets.symmetric(horizontal: 83, vertical: 83),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 58),
            constraints: const BoxConstraints(maxWidth: 624),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Welcome to my Portfolio",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ThemeColorName.headline,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Hi I’m \n',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: ThemeColorName.headline,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 60.0,
                                  )),
                      TextSpan(
                          text: 'Robert Junior\n',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                color: ThemeColorName.nameColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 70.0,
                              )),

                      // Product Designer
                      TextSpan(
                          text: 'Product Designer',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: ThemeColorName.headline,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 60.0,
                                  )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: ThemeColorName.headline),
                    maxLines: 3,
                    textAlign: TextAlign.left,
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
          ),
          Flexible(
            child: Container(
              width: 533, // Adjust as needed
              height: 536, // Adjust as needed
              decoration: BoxDecoration(
                color: ThemeColorName.borderColor, // #F2F2F2
                borderRadius: BorderRadius.circular(300.0), // Radius 300px
                border: Border.all(
                  color: ThemeColorName.borderColor, // 1px border color
                  width: 1.0, // 1px border width
                ),
              ),
              child: Image.asset(
                fit: BoxFit.cover,
                "assets/images/background.jpg",
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
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: ThemeColorName.headline)),
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
        children: [
          // Logo and AeroVision text
          Row(
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                  width: 6.0), // Add some spacing between logo and text
              Text("AeroVision",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: ThemeColorName.headline,
                      fontSize: 25,
                      fontWeight: FontWeight.w900)),
            ],
          ),

          // Tabs
          const Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  tabs.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(tabs[index],
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: ThemeColorName.headline,
                                )),
                      ))),
          // Row(
          //   children: tabs.map((tab) {
          //     return Flexible(
          //       flex: 1,
          //       child: Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //         child: Text(tab,
          //             style: Theme.of(context).textTheme.titleSmall!.copyWith(
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w600,
          //                   color: ThemeColorName.headline,
          //                 )),
          //       ),
          //     );
          //   }).toList(),
          // ),

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
  Widget buildPage(BuildContext context) {
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
