// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pie/colors.dart';
import 'package:pie/dashboard/content/PieChartSample3.dart';
import 'package:pie/dashboard/content/intro.dart';
import 'package:pie/widgets/intro_card.dart';
import 'package:pie/widgets/recepie_cards.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().backgroundColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Recepies",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          )),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("asset/images/logo.png")),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroToPIE()));
                  },
                  child: IntroCard(
                      title: "Participating In Entrepreneurship",
                      description: "Author: Omar Aziz, ICDC",
                      image: "asset/images/intro.jpg"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroToPIE()));
                  },
                  child: RecepieCardLeft(
                      title: "Recipe I",
                      description: "description",
                      image: "asset/images/pizza.jpeg"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PieChartSample3()));
                  },
                  child: RecepieCardRight(
                      title: "Recipe II",
                      description:
                          "Researched, planned and reviewed implementation Researched, planned and reviewed implementation of sales & marketing strategies",
                      image: "asset/images/pizza.jpeg"),
                ),
                RecepieCardLeft(
                    title: "Recipe III",
                    description: "description",
                    image: "asset/images/pizza.jpeg"),
                RecepieCardRight(
                    title: "Recipe IV",
                    description:
                        "Researched, planned and reviewed implementation Researched, planned and reviewed implementation of sales & marketing strategies",
                    image: "asset/images/pizza.jpeg"),
                RecepieCardLeft(
                    title: "Recipe V",
                    description: "description",
                    image: "asset/images/pizza.jpeg"),
                RecepieCardRight(
                    title: "Recipe VI",
                    description:
                        "Researched, planned and reviewed implementation Researched, planned and reviewed implementation of sales & marketing strategies",
                    image: "asset/images/pizza.jpeg"),
                RecepieCardLeft(
                    title: "Recipe VII",
                    description: "description",
                    image: "asset/images/pizza.jpeg"),
                RecepieCardRight(
                    title: "Recipe VIII",
                    description:
                        "Researched, planned and reviewed implementation Researched, planned and reviewed implementation of sales & marketing strategies",
                    image: "asset/images/pizza.jpeg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
