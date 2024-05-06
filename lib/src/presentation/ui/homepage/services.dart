import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme/color_theme.dart';

class ServicesPageModel {
  String servicesOffered;
  String servicesDescription;
  ServicesPageModel(
      {required this.servicesOffered, required this.servicesDescription});
}

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  int currentIndex = 0;

  List<ServicesPageModel> servicesPages = [
    ServicesPageModel(
        servicesOffered: "Website / App DesignUX / UI Design",
        servicesDescription:
            "Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design"),
    ServicesPageModel(
        servicesOffered: "Strategic Marketing and Creative Content",
        servicesDescription:
            "Elevating Brands and Engagement through Strategic Marketing and Creative Content"),
    ServicesPageModel(
        servicesOffered: "Multivendor eCommerce Website Solutions",
        servicesDescription:
            "Unlocking the World of Multivendor eCommerce Websites"),
    // replica
    ServicesPageModel(
        servicesOffered: "Website / App DesignUX / UI Design",
        servicesDescription:
            "Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design"),
    ServicesPageModel(
        servicesOffered: "Strategic Marketing and Creative Content",
        servicesDescription:
            "Elevating Brands and Engagement through Strategic Marketing and Creative Content"),
    ServicesPageModel(
        servicesOffered: "Multivendor eCommerce Website Solutions",
        servicesDescription:
            "Unlocking the World of Multivendor eCommerce Websites"),
  ];

  bool servicestaken = false;

  servicesSectionsForDesktop() {
    return Container(
      margin: const EdgeInsets.only(top: 200),
      constraints: const BoxConstraints(maxWidth: 652),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Services",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ThemeColorName.nameColor,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15.0,
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
                  text: 'Exploring My Design ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ThemeColorName.headline,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: 'Skills',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ThemeColorName.nameColor,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
              constraints: const BoxConstraints(maxHeight: 85),
              margin: const EdgeInsets.symmetric(
                horizontal: 353,
              ),
              child: Text(
                "We transform your ideas into a distinctive web project that both inspires you and captivates your customers",
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ThemeColorName.headline,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
          Container(
            margin: const EdgeInsets.only(top: 30.0, left: 81, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      currentIndex >= 0
                          ? setState(() => currentIndex--)
                          : Container();
                    },
                    child:
                        Image.asset("assets/images/button_previous_page.png")),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                    onTap: () {
                      currentIndex <= servicesPages.length
                          ? setState(() => currentIndex == servicesPages.length
                              ? () {}
                              : currentIndex++)
                          : Container();
                    },
                    child: Image.asset("assets/images/button_next_page.png")),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 81.0, top: 30),
            height: 366, // Set a fixed height or use constraints as needed
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = i;
                  });
                },
                child: SizedBox(
                  width: 406,
                  child: Card(
                    color: currentIndex != i
                        ? ThemeColorName.whiteColors
                        : ThemeColorName.nameColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                                colorBlendMode: BlendMode.color,
                                "assets/images/services_jpg.jpg",
                                height: 95),
                          ),
                          Text(servicesPages[i].servicesOffered,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: currentIndex != i
                                          ? const Color.fromARGB(
                                              255, 95, 95, 95)
                                          : ThemeColorName.whiteColors,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700)),
                          Container(
                            height: 93,
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Text(servicesPages[i].servicesDescription,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: currentIndex != i
                                            ? const Color.fromARGB(
                                                255, 95, 95, 95)
                                            : ThemeColorName.whiteColors,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                child: Text("Learn More ",
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: currentIndex != i
                                                ? ThemeColorName.nameColor
                                                : ThemeColorName.whiteColors,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                              ),
                              Image.asset(
                                "assets/images/arrow.png",
                                color: currentIndex != i
                                    ? ThemeColorName.nameColor
                                    : ThemeColorName.whiteColors,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 30,
              ),
              itemCount: servicesPages.length,
            ),
          ),

          // SizedBox(
          //   height: 366,
          //   child: ListView.separated(
          //       scrollDirection: Axis.horizontal,
          //       shrinkWrap: true,
          //       itemBuilder: (context, i) => GestureDetector(
          //             onTap: () {
          //               setState(() {
          //                 currentIndex = i;
          //               });
          //             },
          //             child: SizedBox(
          //               width: 406,
          //               child: Card(
          //                 color: currentIndex != i
          //                     ? ThemeColorName.whiteColors
          //                     : ThemeColorName.nameColor,
          //                 shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(20.0)),
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(30.0),
          //                   child: Column(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: [
          //                       Align(
          //                         alignment: Alignment.topLeft,
          //                         child: Image.asset(
          //                             colorBlendMode: BlendMode.color,
          //                             "assets/images/services_jpg.jpg",
          //                             height: 95),
          //                       ),
          //                       Text(servicesPages[i].servicesOffered,
          //                           style: Theme.of(context)
          //                               .textTheme
          //                               .titleMedium
          //                               ?.copyWith(
          //                                   color: currentIndex != i
          //                                       ? const Color.fromARGB(
          //                                           255, 95, 95, 95)
          //                                       : ThemeColorName.whiteColors,
          //                                   fontSize: 25,
          //                                   fontWeight: FontWeight.w700)),
          //                       Container(
          //                         height: 93,
          //                         margin: const EdgeInsets.only(top: 10.0),
          //                         child: Text(
          //                             servicesPages[i].servicesDescription,
          //                             maxLines: 3,
          //                             overflow: TextOverflow.ellipsis,
          //                             style: Theme.of(context)
          //                                 .textTheme
          //                                 .titleMedium
          //                                 ?.copyWith(
          //                                     color: currentIndex != i
          //                                         ? const Color.fromARGB(
          //                                             255, 95, 95, 95)
          //                                         : ThemeColorName.whiteColors,
          //                                     fontSize: 18,
          //                                     fontWeight: FontWeight.w400)),
          //                       ),
          //                       Row(
          //                         children: [
          //                           Container(
          //                             margin:
          //                                 const EdgeInsets.only(right: 10.0),
          //                             child: Text("Learn More ",
          //                                 maxLines: 1,
          //                                 textAlign: TextAlign.left,
          //                                 style: Theme.of(context)
          //                                     .textTheme
          //                                     .titleMedium
          //                                     ?.copyWith(
          //                                         color: currentIndex != i
          //                                             ? ThemeColorName.nameColor
          //                                             : ThemeColorName
          //                                                 .whiteColors,
          //                                         fontSize: 18,
          //                                         fontWeight: FontWeight.w400)),
          //                           ),
          //                           Image.asset(
          //                             "assets/images/arrow.png",
          //                             color: currentIndex != i
          //                                 ? ThemeColorName.nameColor
          //                                 : ThemeColorName.whiteColors,
          //                           )
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //       separatorBuilder: (context, index) => const SizedBox(
          //             width: 30,
          //           ),
          //       itemCount: servicesPages.length),
          // )
        ],
      ),
    );
  }

  servicesSectionsForMobile() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Services",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ThemeColorName.nameColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15.0,
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
                  text: 'Exploring My Design ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ThemeColorName.nameColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: 'Skills',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ThemeColorName.nameColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 85),
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
                "We transform your ideas into a distinctive web project that both inspires you and captivates your customers",
                maxLines: 3,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ThemeColorName.headline,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 20.0, left: 11, right: 11, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      currentIndex >= 0
                          ? setState(() => currentIndex--)
                          : Container();
                    },
                    child:
                        Image.asset("assets/images/button_previous_page.png")),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                    onTap: () {
                      currentIndex <= servicesPages.length
                          ? setState(() => currentIndex == servicesPages.length
                              ? () {}
                              : currentIndex++)
                          : Container();
                    },
                    child: Image.asset("assets/images/button_next_page.png")),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 366,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = i;
                          });
                        },
                        child: SizedBox(
                          width: 370,
                          child: Card(
                            color: currentIndex != i
                                ? ThemeColorName.whiteColors
                                : ThemeColorName.nameColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // currentIndex == i
                                  //     ?
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                        colorBlendMode: BlendMode.color,
                                        "assets/images/services_jpg.jpg",
                                        height: 95),
                                    // Image.asset(
                                    //     "assets/images/services_enabled.jpg",
                                    //     height: 95),
                                  )
                                  // : Align(
                                  //     alignment: Alignment.topLeft,
                                  //     child: Image.asset(
                                  //         colorBlendMode:
                                  //             BlendMode.color,
                                  //         "assets/images/services_jpg.jpg",
                                  //         height: 95),
                                  //   ),,
                                  ,
                                  Text(servicesPages[i].servicesOffered,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: currentIndex != i
                                                  ? const Color.fromARGB(
                                                      255, 95, 95, 95)
                                                  : ThemeColorName.whiteColors,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 25.0)),
                                  Container(
                                    height: 93,
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      servicesPages[i].servicesDescription,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: currentIndex != i
                                                  ? ThemeColorName
                                                      .mileStoneColor
                                                  : ThemeColorName.whiteColors,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18.0),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text("Learn More ",
                                            maxLines: 1,
                                            textAlign: TextAlign.left,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                    color: currentIndex != i
                                                        ? ThemeColorName
                                                            .nameColor
                                                        : ThemeColorName
                                                            .whiteColors,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                      ),
                                      Image.asset(
                                        "assets/images/arrow.png",
                                        color: currentIndex != i
                                            ? ThemeColorName.nameColor
                                            : ThemeColorName.whiteColors,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 30,
                      ),
                  itemCount: servicesPages.length),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: servicesSectionsForMobile(),
      tablet: servicesSectionsForDesktop(),
      desktop: servicesSectionsForDesktop(),
    );
  }
}
