// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pie/widgets/my_accordian.dart';

import '../colors.dart';

class Curriculam extends StatefulWidget {
  const Curriculam({Key? key}) : super(key: key);

  @override
  _CurriculamState createState() => _CurriculamState();
}

class _CurriculamState extends State<Curriculam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().backgroundColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Course Curriculam",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold,
                fontSize: 28),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text(
                "12 Recipes For Small Business Success",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const Text("(Interactive Learning Modules)"),
              const SizedBox(
                height: 10,
              ),
              MyAccordian(
                title: "1. Do You Have What It Takes?",
                description: "Determined skills baseline for ownership",
              ),
              MyAccordian(
                title: "2. Developing the Entrepreneur Within",
                description: "Solved the entrepreneurial equation",
              ),
              MyAccordian(
                title: "3. Basic Skills For Achievement",
                description:
                    "Identified the building blocks for success in business",
              ),
              MyAccordian(
                title: "4. Creative Applications",
                description: "Created A Personal Life Plan",
              ),
              MyAccordian(
                title: "5. Getting Organized",
                description: "Reviewed forms of business ownership",
              ),
              MyAccordian(
                title: "6. Managing By The Numbers",
                description: "Analyzed credit and financial reporting",
              ),
              MyAccordian(
                title: "7. Human Resources",
                description:
                    "Identified the key members of the team & staffing",
              ),
              MyAccordian(
                title: "8. Business Taxes",
                description: "Discussed the four types of business taxes & IRS",
              ),
              MyAccordian(
                title: "9. Financing Your Dream",
                description: "Examined the components of a business plan",
              ),
              MyAccordian(
                title: "10. Sales & Marketing",
                description:
                    "Researched, planned and reviewed implementation of sales & marketing strategies",
              ),
              MyAccordian(
                title: "11. Growing & Developing",
                description:
                    "Practiced in the “Taking an Entrepreneur to Lunch Exercise”",
              ),
              MyAccordian(
                title: "12. Reflection & Celebration",
                description:
                    "Reviewed and practiced what was learned & celebrated completion of the course. Discussed the Next Steps!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
