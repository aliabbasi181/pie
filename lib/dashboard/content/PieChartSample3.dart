// ignore_for_file: file_names, must_be_immutable, sized_box_for_whitespace, must_call_super

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pie/colors.dart';
import 'package:pie/dashboard/content/recepie%201/PreferenceIndicatorExercise.dart';
import 'package:pie/dashboard/content/recepie%201/preset.dart';
import 'package:pie/widgets/bullet_list.dart';
import 'package:pie/widgets/title_description.dart';

/// Icons by svgrepo.com (https://www.svgrepo.com/collection/job-and-professions-3/)
class PieChartSample3 extends StatefulWidget {
  const PieChartSample3({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartSample3State();
}

class PieChartSample3State extends State {
  //int touchedIndex = 0;
  int touchedIndex = 0;
  String appTitle = "Recepie ";

  @override
  void initState() {
    touchedIndex = 9;
  }

  @override
  Widget build(BuildContext context) {
    switch (touchedIndex) {
      case 0:
        appTitle = "Recepie 4";
        break;
      case 1:
        appTitle = "Recepie 5";
        break;
      case 2:
        appTitle = "Recepie 6";
        break;
      case 3:
        appTitle = "Recepie 7";
        break;
      case 4:
        appTitle = "Recepie 8";
        break;
      case 5:
        appTitle = "Recepie 9";
        break;
      case 6:
        appTitle = "Recepie 10";
        break;
      case 7:
        appTitle = "Recepie 11";
        break;
      case 8:
        appTitle = "Recepie 12";
        break;
      case 9:
        appTitle = "Recepie 1";
        break;
      case 10:
        appTitle = "Recepie 2";
        break;
      case 11:
        appTitle = "Recepie 3";
        break;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          appTitle,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback:
                          (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            //touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      }),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 0,
                      sections: showingSections(touchedIndex)),
                ),
              ),
              MyBody(
                index: touchedIndex,
              ),
            ]),
      ),
    );
  }
}

List<PieChartSectionData> showingSections(int touchedIndex) {
  return List.generate(12, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 20.0 : 16.0;
    final radius = isTouched ? 135.0 : 130.0;

    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'IV',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 1:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'V',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 2:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'VI',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 3:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'VII',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 4:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'VIII',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 5:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'IX',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 6:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'X',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 7:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'XI',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          badgeWidget: Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              image: const DecorationImage(
                  image: AssetImage('asset/images/pie.png')),
            ),
          ),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: -0.01,
        );
      case 8:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'XII',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 9:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'I',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 10:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'II',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      case 11:
        return PieChartSectionData(
          color: Colors.white,
          value: 12.5,
          title: 'III',
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          titlePositionPercentageOffset: 1.15,
          badgePositionPercentageOffset: 1,
        );
      default:
        throw 'Oh no';
    }
  });
}

class MyBody extends StatefulWidget {
  int index;
  MyBody({Key? key, required this.index}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    print(widget.index);
    switch (widget.index) {
      case 0:
        return const Recepie4();
      case 1:
        return const Recepie5();
      case 2:
        return const Recepie6();
      case 3:
        return const Recepie7();
      case 4:
        return const Recepie8();
      case 5:
        return const Recepie9();
      case 6:
        return const Recepie10();
      case 7:
        return const Recepie11();
      case 8:
        return const Recepie12();
      case 9:
        return const Recepie1();
      case 10:
        return const Recepie2();
      case 11:
        return const Recepie3();
      default:
        return const Recepie1();
    }
  }
}

class Recepie1 extends StatelessWidget {
  const Recepie1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie I - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "Preset"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PresetRecepie1()));
            },
          ),
          InkWell(
            child: MyListItem(text: "Preference Indicator Exercise"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const PrefenceIndicatorExerciseRecepie1()));
            },
          ),
          InkWell(
            child: MyListItem(text: "Psychological Barriers"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Level of Knowledge \nConsciousness"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Six Stages of Learning"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review & Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie2 extends StatelessWidget {
  const Recepie2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie II - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "K+ A + C = E3"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child:
                MyListItem(text: "Entrepreneurship and \nLearning Expectation"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Accountability"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Testing the \nEntrepreneurial You"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Personality of an \nEntrepreneur?"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Barriers to Self-Employment \nSuccess"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(
                text: "Advantages and \nDisadvantages of Business \nOwnership"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review & Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie3 extends StatelessWidget {
  const Recepie3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie III - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "Personal Life Plan (PLP)"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "The Magic of Dreaming"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Dream Robbers"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Dream List"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Developing a Vision"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Inner Space Exploration"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "A Vision For The World"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Clarifying Values"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Goal Setting"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Strategic Action Planning"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "ASAP Reality Test"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Psychology of Change"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Daily SAP Activities"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Take A Self Inventory"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Visualization"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Behavior Modification"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Ability"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Credibility"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Marketability"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review & Affirmation"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie4 extends StatelessWidget {
  const Recepie4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie IV - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child:
                MyListItem(text: "Opportunity Recognition \n& Idea Generation"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Serendipity"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Creativity"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Innovation"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(
                text:
                    "Preparing to Write \nPersonal Life Plan (PLP) \n-Outcome of 1- 4"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Don’t Quit"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Two-hour Private Session"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "GITEMM"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review & Affirmation"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie5 extends StatelessWidget {
  const Recepie5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie V - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "Forms of Business \nOwnership"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Additional Information"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Registering Your New \nBusiness"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Other Pertinent Aspects"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Retail in America"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Recommend Steps for \nSelecting Location"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Improvements"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Operational Policies and \nProcedures"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Inventory and Cash Control \nSystems"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie6 extends StatelessWidget {
  const Recepie6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie VI - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "The Importance of Good \nCredit"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Credit Ratings"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Reviewing Your Credit Report"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Five Cs of Credit"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "The Numbers Game"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Setting-up and Keeping the \nBooks"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Five Categories of Accounts"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Managing by the Numbers"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmation"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie7 extends StatelessWidget {
  const Recepie7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie VII - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "The Management Team"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Professional Support Team"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Staffing"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "More Key Questions"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Mission Statement"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Job Descriptions"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie8 extends StatelessWidget {
  const Recepie8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie VIII - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "Tax Types"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Identification Numbers"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Four Tax Types"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Federal Income Tax \nWithholding"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "State Income Tax \nWithholding"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Sales Tax"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Property Tax"),
            onTap: () {
              print("Property Tax");
            },
          ),
          InkWell(
            child: MyListItem(text: "Income Tax"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie9 extends StatelessWidget {
  const Recepie9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie IX - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "What is a Business Plan?"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Why is a Business Plan \nImportant?"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Increase Your Chances of \nSuccess"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(
                text:
                    "The Difference Between a \nBusiness Plan and Financial \nProposal"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child:
                MyListItem(text: "What Format Should The \nBusiness Plan Take"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Key Components of a \nBusiness Plan"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Supporting Documents"),
            onTap: () {
              print("Property Tax");
            },
          ),
          InkWell(
            child: MyListItem(text: "Work Your Plan"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Sample Resources"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie10 extends StatelessWidget {
  const Recepie10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie X - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "Research"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Marketing Concept"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Identify Potential Buyers"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Target Client"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Planning"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Executing A Strategy"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmations"),
            onTap: () {
              print("Property Tax");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie11 extends StatelessWidget {
  const Recepie11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Recepie XI - Action Steps"),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: MyListItem(text: "Importance of Case Studies"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Knowledge is Power"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child:
                MyListItem(text: "How to Achieve Success \nAgainst All Odds"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Knowledge is Power"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Nine Stepping-stones to \nSuccess"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Additional Reading \nRecommendations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Taking an Entrepreneur To \nLunch"),
            onTap: () {
              print("Property Tax");
            },
          ),
          InkWell(
            child: MyListItem(text: "Overcoming Obstacles"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Believe in Yourself"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
          InkWell(
            child: MyListItem(text: "Review and Affirmations"),
            onTap: () {
              print("Will go to Preset");
            },
          ),
        ],
      ),
    );
  }
}

class Recepie12 extends StatelessWidget {
  const Recepie12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.0, color: MyColor().darkOrange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnlyTitle(title: "Thank you"),
          const SizedBox(
            height: 10,
          ),
          OnlyDescription(
              description:
                  "Thank you for choosing Participating In Entrepreneurship (PIE):  Twelve Recipes for Entrepreneurial and Small Business Success.  With each recipe, you have taken the actions required to get one step closer to achieving your personal and business goals.  Now that you have completed each recipe, you are well on your way to getting your piece of the pie. As a PIE alumni member you are awarded a free 30-minute one-on-one entrepreneurial coaching session. Click     to schedule your one-on-one with your Strategic Advisor - today. "),
        ],
      ),
    );
  }
}
