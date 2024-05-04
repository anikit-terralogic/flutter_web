import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_flutter_web/src/presentation/theme/color_theme.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  contactUsForDesktop() {
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
              Text("CONTACT ME",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: ThemeColorName.greycolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 60),
                child: Text("Request Free Consultancy",
                    textAlign: TextAlign.center,
                    style:
                        Theme.of(context).textTheme.displayLarge?.copyWith()),
              ),
              const MyFormForDesktop()
            ]),
      ),
    );
  }

  contactUsForMobile() {
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
              Text("CONTACT ME",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: ThemeColorName.greycolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 60),
                child: Text("Request Free Consultancy",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style:
                        Theme.of(context).textTheme.displayLarge?.copyWith()),
              ),
              const MyFormForMobile()
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: contactUsForMobile(),
      tablet: contactUsForDesktop(),
      desktop: contactUsForDesktop(),
    );
  }
}

class MyFormForDesktop extends StatefulWidget {
  const MyFormForDesktop({super.key});

  @override
  _MyFormForDesktopState createState() => _MyFormForDesktopState();
}

class _MyFormForDesktopState extends State<MyFormForDesktop> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _query;
  late String _projectDescription;
  bool _agreeToTerms = false;

  List<String> imagesLoaded = [
    "assets/images/facebook.png",
    "assets/images/twitter.png",
    "assets/images/linkedin.png",
    "assets/images/email.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 81),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 514,
                height: 272,
                child: Container(
                  margin: const EdgeInsets.only(right: 30.0),
                  decoration: BoxDecoration(
                      color: ThemeColorName.whiteColors,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hotline 24/7 \n",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.mileStoneColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "+23) 5535 68 68",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.mileStoneColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
//
                                      TextSpan(
                                        text: 'Address:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      TextSpan(
                                        text:
                                            '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    children: [
//
                                      TextSpan(
                                        text: 'Email:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      TextSpan(
                                        text: 'nevaeh.simmons@example.com',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    children: [
//
                                      TextSpan(
                                        text: 'Fax:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      TextSpan(
                                        text: '(702) 555-0122',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Work Hour::',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      TextSpan(
                                        text: 'Mon - Sat: 9:00 - 18:00',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                                color: ThemeColorName
                                                    .mileStoneColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: SizedBox(
                  width: 515,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 515, // Set the width of the container
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  errorStyle: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                          color: ThemeColorName.whiteColors,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor:
                                      Colors.white, // White background color
                                  labelStyle: const TextStyle(
                                    color:
                                        Colors.black, // Black label text color
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  // Handle saving name
                                },
                              ),
                            ),
                            const SizedBox(
                                width: 15), // Add spacing between text fields
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  errorStyle: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                          color: ThemeColorName.whiteColors,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor:
                                      Colors.white, // White background color
                                  labelStyle: const TextStyle(
                                    color:
                                        Colors.black, // Black label text color
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email address';
                                  }
                                  // You can add more complex email validation logic here
                                  return null;
                                },
                                onSaved: (value) {
                                  // Handle saving email address
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'How can we help you?',
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.whiteColors,
                                    fontSize: 15,
                                    fontWeight: FontWeight
                                        .w600), // White background color
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your query';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _query = value!;
                        },
                        maxLines: 5,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'How can we help you?',
                            filled: true,
                            errorStyle: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.whiteColors,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                            fillColor: Colors.white, // White background color
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Your Query !';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _projectDescription = value!;
                        },
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _agreeToTerms,
                            onChanged: (value) {
                              setState(() {
                                _agreeToTerms = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By submitting, i’m agreed to the ',
                                    style: TextStyle(
                                      color: ThemeColorName.greycolor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms & Conditons',
                                    style: TextStyle(
                                      color: ThemeColorName.greycolor,
                                      decoration: TextDecoration.underline,
                                    ),
                                    // Add a gesture recognizer to handle tap on the text
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle tap action (e.g., show terms and conditions dialog)
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            if (!_agreeToTerms) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Please agree to the terms and conditions.',
                                    style: TextStyle(
                                      color: ThemeColorName.greycolor,
                                    ),
                                  ),
                                ),
                              );
                              return; // Exit the function without submitting the form
                            }
                            _formKey.currentState!.save();
                            // Form is valid, proceed with handling form data
                            // For example, you can send the form data to a server
                            // or perform any other required action.
                            // Here, we are just printing the form data.
                            print('Name: $_name');
                            print('Email: $_email');
                            print('Query: $_query');
                            print('Project Description: $_projectDescription');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 150),
                          decoration: BoxDecoration(
                              color: ThemeColorName.submit,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(33, 17, 33, 17),
                            child: Text(
                              'Request Now',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                      color: ThemeColorName.whiteColors,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 65, top: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Logo and AeroVision text
              Row(
                children: [
                  Image.asset("assets/images/logo.png"),
                  const SizedBox(
                      width: 6.0), // Add some spacing between logo and text
                  Text(
                    "AeroVision",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: ThemeColorName.whiteColors,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Text(
                " © Copyright 2023. All Rights Reserved.",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: ThemeColorName.followUsColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),

              // Tabs
              Container(
                margin: EdgeInsets.only(right: 81),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Follow us :",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                              color: ThemeColorName.followUsColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: imagesLoaded.map((tab) {
                          return Image.asset(tab);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyFormForMobile extends StatefulWidget {
  const MyFormForMobile({super.key});

  @override
  _MyFormForMobileState createState() => _MyFormForMobileState();
}

class _MyFormForMobileState extends State<MyFormForMobile> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _query;
  late String _projectDescription;
  bool _agreeToTerms = false;

  List<String> imagesLoaded = [
    "assets/images/facebook.png",
    "assets/images/twitter.png",
    "assets/images/linkedin.png",
    "assets/images/email.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                    color: ThemeColorName.whiteColors,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hotline 24/7 \n",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: ThemeColorName.mileStoneColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "+23) 5535 68 68",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: ThemeColorName.mileStoneColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Address:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text:
                                          '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
//
                                    TextSpan(
                                      text: 'Email:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: 'nevaeh.simmons@example.com',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
//
                                    TextSpan(
                                      text: 'Fax:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: '(702) 555-0122',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Work Hour::',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: 'Mon - Sat: 9:00 - 18:00',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color:
                                                  ThemeColorName.mileStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
              Form(
                key: _formKey,
                child: SizedBox(
                  width: 515,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 515, // Set the width of the container
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  errorStyle: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                          color: ThemeColorName.whiteColors,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor:
                                      Colors.white, // White background color
                                  labelStyle: const TextStyle(
                                    color:
                                        Colors.black, // Black label text color
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  // Handle saving name
                                },
                              ),
                            ),
                            const SizedBox(
                                width: 15), // Add spacing between text fields
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  errorStyle: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                          color: ThemeColorName.whiteColors,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor:
                                      Colors.white, // White background color
                                  labelStyle: const TextStyle(
                                    color:
                                        Colors.black, // Black label text color
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email address';
                                  }
                                  // You can add more complex email validation logic here
                                  return null;
                                },
                                onSaved: (value) {
                                  // Handle saving email address
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'How can we help you?',
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.whiteColors,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                            // White background color
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your query';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _query = value!;
                        },
                        maxLines: 5,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'How can we help you?',
                            filled: true,
                            errorStyle: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.whiteColors,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                            fillColor: Colors.white, // White background color
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Your Query !';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _projectDescription = value!;
                        },
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _agreeToTerms,
                            onChanged: (value) {
                              setState(() {
                                _agreeToTerms = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By submitting, i’m agreed to the ',
                                    style: TextStyle(
                                      color: ThemeColorName.greycolor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms & Conditons',
                                    style: TextStyle(
                                      color: ThemeColorName.greycolor,
                                      decoration: TextDecoration.underline,
                                    ),
                                    // Add a gesture recognizer to handle tap on the text
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle tap action (e.g., show terms and conditions dialog)
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            if (!_agreeToTerms) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Please agree to the terms and conditions.',
                                    style: TextStyle(
                                      color: ThemeColorName.greycolor,
                                    ),
                                  ),
                                ),
                              );
                              return; // Exit the function without submitting the form
                            }
                            _formKey.currentState!.save();
                            // Form is valid, proceed with handling form data
                            // For example, you can send the form data to a server
                            // or perform any other required action.
                            // Here, we are just printing the form data.
                            print('Name: $_name');
                            print('Email: $_email');
                            print('Query: $_query');
                            print('Project Description: $_projectDescription');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 150),
                          decoration: BoxDecoration(
                              color: ThemeColorName.submit,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(33, 17, 33, 17),
                            child: Text(
                              'Request Now',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                      color: ThemeColorName.whiteColors,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 11, top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo and AeroVision text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/logo.png"),
                        const SizedBox(
                            width:
                                6.0), // Add some spacing between logo and text
                        Text(
                          "AeroVision",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: ThemeColorName.whiteColors,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 30),
                      child: Text(
                        " © Copyright 2023. All Rights Reserved.",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                color: ThemeColorName.followUsColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // Tabs
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Follow us :",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: ThemeColorName.followUsColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: imagesLoaded.map((tab) {
                                return Image.asset(tab);
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
