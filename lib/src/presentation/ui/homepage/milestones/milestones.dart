import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';
import 'package:sample_flutter_web/src/presentation/ui/homepage/milestones/bloc/milestones_bloc.dart';

import '../../../base/bloc_page/base_page_state.dart';

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
            Text(
              "Our Milestones",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ThemeColorName.greycolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),

            ///  commonTextStyles(AppColors.greyColor, 20, FontWeight.w600)),
            Container(
              margin: const EdgeInsets.only(bottom: 110),
              width: 684,
              child: Text(
                "What sets our studio apart for your projects?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ThemeColorName.whiteColors,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 81.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 171,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 257,
                          height: 171,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(mileStoned[index].milestonedachieved,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: ThemeColorName.mileStoneColor,
                                          fontSize: 50,
                                          fontWeight: FontWeight.w700)),
                              Text(mileStoned[index].milestonsdescription,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: ThemeColorName.mileStoneColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 30); // Space between cards
                      },
                      itemCount: mileStoned.length,
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  )
                ],
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
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ThemeColorName.greycolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: 684,
                child: Text("What sets our studio apart for your projects?",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ThemeColorName.whiteColors,
                        fontSize: 40,
                        fontWeight: FontWeight.w700))),
            Container(
              margin: const EdgeInsets.only(left: 46, right: 46, bottom: 60),
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
                                .titleMedium
                                ?.copyWith(
                                    color: ThemeColorName.mileStoneColor,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700),
                          ),
                          Text(
                            mileStoned[index].milestonsdescription,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: ThemeColorName.mileStoneColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
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

class Milestones extends StatefulWidget {
  const Milestones({super.key});

  @override
  State<Milestones> createState() => _MilestonesState();
}

class _MilestonesState extends BasePageState<Milestones, MileStonePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: milestonesForMobile(context),
      tablet: milestoneForDesktop(context),
      desktop: milestoneForDesktop(context),
    );
  }
}
