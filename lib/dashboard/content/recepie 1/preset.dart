// ignore_for_file: unused_field

import 'package:connectivity/connectivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pie/colors.dart';
import 'package:pie/widgets/bullet_list.dart';
import 'package:pie/widgets/my_buttons.dart';
import 'package:pie/widgets/title_description.dart';

import '../intro.dart';

class PresetRecepie1 extends StatefulWidget {
  const PresetRecepie1({Key? key}) : super(key: key);

  @override
  _PresetRecepie1State createState() => _PresetRecepie1State();
}

class _PresetRecepie1State extends State<PresetRecepie1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Recepie I (Preset)",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 70),
          child: Column(
            children: [
              Center(
                  child: OnlyTitle(
                      title: "Recepie I\nDo I have what it takes to...?")),
              const Image(
                image: AssetImage("asset/images/recepie-1.png"),
                width: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          "“Do the little things well now. In time, great things will be presented to you, waiting to be done.”",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Quicksand"),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          Linking.openMyLink(
                              "https://www.youtube.com/watch?v=TBuIGBCF9jc&feature=youtu.be",
                              context);
                        },
                    ),
                    const TextSpan(
                        text:
                            "\n\n(click the quote above to view the video)\n-Persian Proverb",
                        style: TextStyle(color: Colors.black)),
                  ])),
              const MyDivider(),
              OnlyDescription(
                  description:
                      "Throughout history entrepreneurs had to overcome external and internal barriers. Upon completing Recipe I, you will have completed a pretest, determined your thinking and learning preference, identified psychological barriers and ways to overcome them, evaluated the levels of knowledge consciousness and reviewed the six stages of learning. The objective of Recipe I is to establish a baseline for learning what it takes to achieve your goals and examine the internal ingredients successful entrepreneurs are made of. Learn about America's first \"celebrity\" chef and first coffee stand."),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage("asset/images/logo.png"),
                    width: 150,
                  ),
                  InkWell(
                    onTap: () {
                      URL = "https://vimeo.com/40430884";
                      Linking.openMyLink(URL, context);
                    },
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("asset/images/logo.png"),
                          width: 150,
                        ),
                        Text(
                          "Tap on above image \nto open link",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const MyDivider(),
              TitleWithDesc(
                  title: "Test Your Knowledge",
                  description:
                      "Instructions: You have been provided 50 pretest questions. You can take the test online using link below to complete your pre-test online."),
              MyPrimaryButton(
                  action: () {
                    URL =
                        "https://forms.office.com/Pages/ResponsePage.aspx?id=hhr1zotdwEC3K0tIlUj5AAv07qkD_hBMubTCHhG5oXxUNVNDN0ZBNktIOVpXT1lWOThISzMzNE1WWS4u";
                    Linking.openMyLink(URL, context);
                  },
                  text: "Take me to test"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showObjectives(context);
        },
        label: const Text(
          'Objectives',
          style: TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        backgroundColor: MyColor().darkOrange,
        icon: const Icon(
          Icons.list_rounded,
          size: 26,
        ),
      ),
    );
  }
}

void _showObjectives(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: const Text(
                  "Objectives",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                iconTheme: const IconThemeData(color: Colors.black),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upon completing Recipe 1, you will have...",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ObjectivePoints(
                          heading: "1. ", text: "Completed the pretest."),
                      ObjectivePoints(
                          heading: "2. ",
                          text:
                              "Reviewed and completed the Preference Indicator Exercise (PIE)."),
                      ObjectivePoints(
                          heading: "3. ",
                          text:
                              "Identified the barriers you need to overcome and worked on the solutions, until the psychological barriers are removed."),
                      ObjectivePoints(
                          heading: "4. ",
                          text:
                              "Evaluated, charted, and determined your level of business and entrepreneurial consciousness."),
                      ObjectivePoints(
                          heading: "5. ",
                          text:
                              "Identified where you are on the \"Stairway to Achievement.\""),
                      ObjectivePoints(
                          heading: "6. ",
                          text:
                              "Completed Recipe I. review and affirmation exercise."),
                    ],
                  ),
                ),
              ),
            ));
      });
}
