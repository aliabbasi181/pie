// ignore_for_file: file_names, must_call_super, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pie/widgets/bullet_list.dart';
import 'package:pie/widgets/my_buttons.dart';
import 'package:pie/widgets/title_description.dart';
import 'package:connectivity/connectivity.dart';

import '../../../colors.dart';
import '../intro.dart';

String URL = "";

class PrefenceIndicatorExerciseRecepie1 extends StatefulWidget {
  const PrefenceIndicatorExerciseRecepie1({Key? key}) : super(key: key);

  @override
  _PrefenceIndicatorExerciseRecepie1State createState() =>
      _PrefenceIndicatorExerciseRecepie1State();
}

class _PrefenceIndicatorExerciseRecepie1State
    extends State<PrefenceIndicatorExerciseRecepie1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Recepie I (Preference Indicator Exercise)",
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
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 70),
          child: Column(
            children: [
              const Text(
                  "Take a moment to actively listen to the video clips below:"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyPrimaryButton(
                      action: () {
                        URL = "https://www.youtube.com/watch?v=qFDrjZhBXbY";
                        Linking.openMyLink(URL, context);
                      },
                      text: "Watch Video 1"),
                  MyPrimaryButton(
                      action: () {
                        URL = "https://www.youtube.com/watch?v=8pq_tCgDkT4";
                        Linking.openMyLink(URL, context);
                      },
                      text: "Watch Video 2"),
                ],
              ),
              const MyDivider(),
              OnlyDescription(
                  description:
                      "Now, you are provided three Preference Locator Maps and one special Personal Indicator Map designed for this exercise. Review and complete the four maps."),
              HeadingListItem(
                  heading: "Map 1 ",
                  text:
                      " - Mental Activities and Thinking Modes: Circle the eight elements you most strongly feel represent you."),
              HeadingListItem(
                  heading: "Map 2 ",
                  text:
                      " - Career Elements: Circle the eight elements most important to your career over the long term."),
              HeadingListItem(
                  heading: "Map 3 ",
                  text:
                      " - Job Requirements: Circle the eight requirements you feel must be a part of your ideal job."),
              HeadingListItem(
                  heading: "Tallying Up Your Quadrant Selections on Map 4",
                  text:
                      "\nEnter the number of items you circled in each of the four quadrants labeled A, B, C, and D on each of the Locator Maps in the spaces provided. Then, calculate the total items you chose for each quadrant. This will provide a numerical identification of the quadrant that is most dominant for you. This is an indicator of your thinking and learning preferences. To learn more about the Whole Brain Business Model go to"),
              ElevatedButton(
                  onPressed: () {
                    URL = "https://www.thinkherrmann.com/";
                    Linking.openMyLink(URL, context);
                  },
                  child: const Text("thinkherrmann.com"))
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
