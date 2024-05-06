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
                    margin: const EdgeInsets.only(bottom: 24.0),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ThemeColorName.nameColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
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
                            .titleMedium
                            ?.copyWith(
                                color: ThemeColorName.headline,
                                fontSize: 50,
                                fontWeight: FontWeight.w700)),
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10.0,
                    childAspectRatio:
                        MediaQuery.of(context).size.width / (tabs.length * 30),
                    children: List.generate(tabs.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? ThemeColorName.nameColor
                                : ThemeColorName.whiteColors,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 1.0,
                                color: index != 0
                                    ? ThemeColorName.nameColor
                                    : ThemeColorName.whiteColors),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                tabs[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: index != 0
                                      ? ThemeColorName.nameColor
                                      : ThemeColorName.whiteColors,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: ((context, index) => SizedBox(
                            height: 370,
                            child: Container(
                              margin:
                                  const EdgeInsets.only(right: 10, left: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                      separatorBuilder: ((context, index) => const SizedBox(
                            height: 10.0,
                          )),
                      itemCount: images.length)
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
