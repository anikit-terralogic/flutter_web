import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_flutter_web/src/presentation/base/bloc_page/base_page_state.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/aboutme/bloc/aboutus_bloc.dart';

class SkillItem extends StatelessWidget {
  final String skillName;
  final double progress;

  const SkillItem({required this.skillName, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            skillName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                height: 1.5,
                color: ThemeColorName.headline,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9.0, bottom: 25),
            width: MediaQuery.of(context).size.width,
            height: 17,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: ThemeColorName
                    .skillcolor, // Background color of the progress bar
                valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.blue), // Progress color
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends BasePageState<AboutMeSection,AboutUsPageBloc> {
  final List<Map<String, dynamic>> skills = [
    {'name': 'User Experience Design - UI/UX', 'progress': 0.9},
    {'name': 'Web & User Interface Design - Development', 'progress': 9.6},
    {'name': 'Interaction Design - Animation', 'progress': 0.8},
  ];

  List<String> tabs = ["Main Skills", "Awards", "Education"];

  double _progress = 60.0;

  int currentIndex = 0;

  int mobileCurrentIndex = 0;

  aboutMeForDesktop() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 83),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 30),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: ThemeColorName.borderColor)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  fit: BoxFit.contain,
                  "assets/images/aboutme_image.png",
                  width: 627,
                  height: 623,
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 619),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0, top: 100),
                    child: Text("About Me",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: ThemeColorName.nameColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                  ),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '20 Year’s Experience on ',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: ThemeColorName.nameColor,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'Product Design\n',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: ThemeColorName.headline,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0, bottom: 40),
                    child: RichText(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 18.0,
                            color: ThemeColorName.headline,
                            height: 1.4),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Hello there! I\'m ',
                          ),
                          TextSpan(
                            text: 'Robert Junior.',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' I specialize in web design and development, and I\'m deeply passionate and committed to my craft. With ',
                          ),
                          TextSpan(
                            text: '20 years',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' of experience as a professional graphic designer',
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// tabbar and tabbarview
                  TabBar(
                      indicator: BoxDecoration(
                        color:
                            ThemeColorName.nameColor, // Color of the indicator
                        borderRadius:
                            BorderRadius.circular(50), // Rounded corners
                      ),
                      isScrollable: true,
                      labelStyle:
                          Theme.of(context).textTheme.displayMedium?.copyWith(),
                      unselectedLabelStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(),
                      labelColor: ThemeColorName.whiteColors,
                      unselectedLabelColor: ThemeColorName.nameColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      onTap: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      tabs: List.generate(
                          tabs.length,
                          (index) => Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 1.0,
                                        color: currentIndex == index
                                            ? ThemeColorName.nameColor
                                            : ThemeColorName.whiteColors)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 13, 30, 13),
                                  child: Text(
                                    tabs[index],
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: currentIndex != index
                                                ? ThemeColorName.whiteColors
                                                : ThemeColorName.nameColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ))),
                  SizedBox(
                      height: 364,
                      child: TabBarView(
                          children: List.generate(
                              tabs.length,
                              (index) => ListView.builder(
                                  itemCount: skills.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return SkillItem(
                                      skillName: skills[index]['name'],
                                      progress: skills[index]['progress'],
                                    );
                                  }))))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  aboutMeForMobile() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 30),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: ThemeColorName.borderColor)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  fit: BoxFit.contain,
                  "assets/images/background.jpg",
                  width: 350,
                  height: 347,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0, top: 30),
              child: Text("About Me",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ThemeColorName.nameColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
            RichText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: '20 Year’s Experience on ',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.nameColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: 'Product Design\n',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.headline,
                          fontSize: 40,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: RichText(
                maxLines: 5,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: TextStyle(
                      fontSize: 18.0,
                      color: ThemeColorName.headline,
                      fontWeight: FontWeight.w400),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Hello there! I\'m ',
                    ),
                    TextSpan(
                      text: 'Robert Junior.',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' I specialize in web design and development, and I\'m deeply passionate and committed to my craft. With ',
                    ),
                    TextSpan(
                      text: '20 years',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' of experience as a professional graphic designer...',
                    ),
                  ],
                ),
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ThemeColorName.nameColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: ThemeColorName.nameColor)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(36.0, 13.0, 36.0, 13.0),
                    child: Text(
                      tabs[0],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.whiteColors,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              // 2
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ThemeColorName.whiteColors,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: ThemeColorName.nameColor)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(36.0, 13.0, 36.0, 13.0),
                    child: Text(
                      tabs[1],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.nameColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ThemeColorName.whiteColors,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: ThemeColorName.nameColor)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(36.0, 13.0, 36.0, 13.0),
                    child: Text(
                      tabs[2],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.nameColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ]),
            ListView(
              shrinkWrap: true,
              children: List.generate(
                  skills.length,
                  (index) => SkillItem(
                        skillName: skills[index]['name'],
                        progress: skills[index]['progress'],
                      )),
            )
          ]),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: getValueForScreenType<Widget>(
          context: context,
          mobile: aboutMeForMobile(),
          tablet: aboutMeForDesktop(),
          desktop: aboutMeForDesktop(),
        ));
  }
}
