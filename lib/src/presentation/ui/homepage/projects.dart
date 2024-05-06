import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme/color_theme.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects>
    with SingleTickerProviderStateMixin {
  var images = [
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/five.png",
    "assets/images/six.png",
  ];

  List<String> tabs = ["All", "UI/UX Design", "Branding Design", "Wordpress"];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int currentIndex = 0;

  projectForDesktop() {
    return Container(
        //  margin: const EdgeInsets.only(top: 100),
        decoration: BoxDecoration(color: ThemeColorName.whiteColors),
        child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Our Milestones
                  Container(
                    margin: EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      "Our projects",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.nameColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: 684,
                    child: Text(
                      "Presenting My Design Portfolio and Case Studies",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.headline,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  TabBar(
                      indicator: BoxDecoration(
                        color:
                            ThemeColorName.nameColor, // Color of the indicator
                        borderRadius:
                            BorderRadius.circular(50), // Rounded corners
                      ),
                      controller: _tabController,
                      isScrollable: true,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                              color: ThemeColorName.whiteColors,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                      unselectedLabelStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                              color: ThemeColorName.nameColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
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
                                        color: ThemeColorName.nameColor)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 13, 30, 13),
                                  child: Text(
                                    tabs[index],
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ))),
                  SizedBox(
                      height: 764,
                      child: TabBarView(
                          controller: _tabController,
                          children: List.generate(
                              tabs.length,
                              (index) => Container(
                                    margin: const EdgeInsets.only(
                                        left: 81, right: 81, top: 50),
                                    child: SizedBox(
                                      height: 764,
                                      child: GridView.builder(
                                        shrinkWrap: true,
                                        itemCount: images.length ?? 0,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 30,
                                          mainAxisSpacing: 30.0,
                                        ),
                                        itemBuilder: (context, index) {
                                          return AspectRatio(
                                              aspectRatio: 370 / 334,
                                              // 406 /
                                              //     367, // Aspect ratio based on image dimensions
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                child: Image.asset(
                                                  images[index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ));
                                        },
                                      ),
                                    ),
                                  ))))
                ])));
  }

  projectForMobile() {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(color: ThemeColorName.whiteColors),
        child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Our Milestones
                  Text("Our projects",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: ThemeColorName.nameColor)),
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: 684,
                    child: Text(
                        "Presenting My Design Portfolio and Case Studies",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(color: ThemeColorName.headline)),
                  ),
                  TabBar(
                      indicator: BoxDecoration(
                        color:
                            ThemeColorName.nameColor, // Color of the indicator
                        borderRadius:
                            BorderRadius.circular(50), // Rounded corners
                      ),
                      controller: _tabController,
                      isScrollable: true,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: ThemeColorName.whiteColors),
                      unselectedLabelStyle: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: ThemeColorName.nameColor),
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
                                        color: ThemeColorName.nameColor)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 13, 30, 13),
                                  child: Text(
                                    tabs[index],
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ))),
                  SizedBox(
                      height: 764,
                      child: TabBarView(
                          controller: _tabController,
                          children: List.generate(
                              tabs.length,
                              (index) => Container(
                                    margin: const EdgeInsets.only(
                                        left: 11, right: 11, top: 30),
                                    child: SizedBox(
                                      height: 764,
                                      child: GridView.builder(
                                        shrinkWrap: true,
                                        itemCount: images.length ?? 0,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 1,
                                          crossAxisSpacing: 30,
                                          mainAxisSpacing: 30.0,
                                        ),
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            child: Image.asset(
                                              images[index],
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ))))
                ])));
  }

  @override
  Widget build(BuildContext context) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: projectForMobile(),
      tablet: projectForDesktop(),
      desktop: projectForDesktop(),
    );
  }
}
