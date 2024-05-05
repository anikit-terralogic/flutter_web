import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';

class MilestoneModel {
  String milestonedachieved;
  String milestonsdescription;
  MilestoneModel(
      {required this.milestonedachieved, required this.milestonsdescription});
}

// Milestone
List<MilestoneModel> mileStoned = [
  MilestoneModel(
      milestonedachieved: "8300+",
      milestonsdescription: "Figma ipsum component variant main layer. Hand."),
  MilestoneModel(
      milestonedachieved: "100%",
      milestonsdescription: "Figma ipsum component variant main layer."),
  MilestoneModel(
      milestonedachieved: "3.5k+",
      milestonsdescription: "Figma ipsum component variant main "),
  MilestoneModel(
      milestonedachieved: "240k+",
      milestonsdescription: "Figma ipsum component variant main layer "),
];

milestoneForDesktop(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 100),
    decoration: BoxDecoration(color: ThemeColorName.nameColor),
    child: Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Our Milestones
            Text("Our Milestones",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: ThemeColorName.greycolor)),

            ///  commonTextStyles(AppColors.greyColor, 20, FontWeight.w600)),
            Container(
              margin: const EdgeInsets.only(bottom: 110),
              width: 684,
              child: Text("What sets our studio apart for your projects?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 81, right: 81, bottom: 150),
              child: SizedBox(
                height: 171,
                child: ListView.separated(
                  itemCount: mileStoned.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 30,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 257,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(mileStoned[index].milestonedachieved,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(
                                        color: ThemeColorName.mileStoneColor)),
                            Text(mileStoned[index].milestonsdescription,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                        color: ThemeColorName.mileStoneColor)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ]),
    ),
  );
}

milestonesForMobile(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    decoration: BoxDecoration(color: ThemeColorName.nameColor),
    child: Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Our Milestones
            Text("Our Milestones",
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: ThemeColorName.greycolor)),
            Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: 684,
                child: Text("What sets our studio apart for your projects?",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        Theme.of(context).textTheme.displayLarge?.copyWith())),
            Container(
              margin: const EdgeInsets.only(left: 81, right: 81, bottom: 60),
              child: ListView.separated(
                itemCount: mileStoned.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 30,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 297,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            mileStoned[index].milestonedachieved,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                    color: ThemeColorName.mileStoneColor),
                          ),
                          Text(
                            mileStoned[index].milestonsdescription,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.mileStoneColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ]),
    ),
  );
}

class Milestones extends StatelessWidget {
  const Milestones({super.key});

  @override
  Widget build(BuildContext context) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: milestonesForMobile(context),
      tablet: milestoneForDesktop(context),
      desktop: milestoneForDesktop(context),
    );
  }
}
