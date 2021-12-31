// ignore_for_file: non_constant_identifier_names

import 'package:accordion/accordion.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pie/colors.dart';
import 'package:pie/dashboard/content/recepie1.txt';
import 'package:pie/widgets/MyTextField.dart';
import 'package:pie/widgets/bullet_list.dart';
import 'package:pie/widgets/buttons.dart';
import 'package:pie/widgets/my_text_styles.dart';
import 'package:pie/widgets/recepie_cards.dart';
import 'package:pie/widgets/title_description.dart';
import 'package:pie/services/global_services.dart';

String URL = "";
LinkingService Linking = LinkingService();
TextEditingController _field_controller = TextEditingController();

class IntroToPIE extends StatefulWidget {
  const IntroToPIE({Key? key}) : super(key: key);

  @override
  State<IntroToPIE> createState() => _IntroToPIEState();
}

class _IntroToPIEState extends State<IntroToPIE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Intro to PIE",
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
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TitleWithDesc(
                  title: "DISCLAIMER",
                  description:
                      "This publication and the accompanying materials are designed to provide accurate and authoritative information regarding the subject matter covered in it. It is provided with the understanding that the publisher is not engaged in rendering legal, accounting, investing advice. If legal, accounting or investing advice or is required, the service of a competent Lawyer, Accountant, or Investment professional should be sought.Reproduction or translation of any part of the information contained herein, in any form or by any means, without the written permission of the author is unlawful."),
              Accordion(
                disableScrolling: true,
                children: [
                  AccordionSection(
                    header: OnlyTitle(title: "DISCLAIMER"),
                    headerBackgroundColor: MyColor().orange,
                    contentBorderWidth: 0.0,
                    content: OnlyDescription(
                        description:
                            "This publication and the accompanying materials are designed to provide accurate and authoritative information regarding the subject matter covered in it. It is provided with the understanding that the publisher is not engaged in rendering legal, accounting, investing advice. If legal, accounting or investing advice or is required, the service of a competent Lawyer, Accountant, or Investment professional should be sought.Reproduction or translation of any part of the information contained herein, in any form or by any means, without the written permission of the author is unlawful. This publication and the accompanying materials are designed to provide accurate and authoritative information regarding the subject matter covered in it. It is provided with the understanding that the publisher is not engaged in rendering legal, accounting, investing advice. If legal, accounting or investing advice or is required, the service of a competent Lawyer, Accountant, or Investment professional should be sought.Reproduction or translation of any part of the information contained herein, in any form or by any means, without the written permission of the author is unlawful. This publication and the accompanying materials are designed to provide accurate and authoritative information regarding the subject matter covered in it. It is provided with the understanding that the publisher is not engaged in rendering legal, accounting, investing advice. If legal, accounting or investing advice or is required, the service of a competent Lawyer, Accountant, or Investment professional should be sought.Reproduction or translation of any part of the information contained herein, in any form or by any means, without the written permission of the author is unlawful."),
                    contentHorizontalPadding: 10.0,
                    contentVerticalPadding: 10.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MyTitle(text: "Participating In Entrepreneurship"),
              MyDiscription(text: "12 RECIPES FOR SMALL BUSINESS SUCCESS"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "T H I R D  -  E D I T I O N",
                style: TextStyle(fontFamily: "Quicksand", fontSize: 30),
              ),
              const Text(
                "Author: Omar Aziz, ICDC",
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Edited by: \nJ. Miller, MBA \n& C C. Christophe, PhD",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Special thanks to my parents for developing in me an entrepreneurial mindset and showing me the value of teaching others how to “get a piece of the pie”.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
              Image.asset("asset/images/image2.png"),
              const SizedBox(
                height: 60,
              ),
              TitleWithDesc(
                  title: "Preparing Students For Careers As Business Owners",
                  description:
                      "The dream of many students is to become self-employed. Results of a US Department of Commerce study show that the strong interest in starting a business derives from the freedom associated with being their own boss. According to a Gallup Poll study done in conjunction with the Ewing Marion Kauffman Foundation, 7 out of 10 students say they want to start their own business. The PIETM Recipes are making students aware of the possibilities offered by entrepreneurship and providing them with knowledge, skills, and attitudes to seize those opportunities."),
              const SizedBox(
                height: 20,
              ),
              const Text("Click on the PIE logo below to view the video"),
              InkWell(
                  onTap: () async {
                    URL = "https://www.youtube.com/watch?v=XfxGbd-MoKQ";
                    Linking.openMyLink(URL, context);
                  },
                  child: Image.asset("asset/images/image2.png")),
              const MyDivider(),
              TitleWithDesc(
                  title: "12 Recipes for Entrepreneurial Success",
                  description: ""),
              Image.asset("asset/images/image2.png"),
              const Text(
                "Definition of Recipe [Rec-i-pe), [res-uh-pee] noun:A recipe is a set of instructions for accomplishing or achieving something. A method or system to attain a desired end: a recipe for success. Participating in Entrepreneurshipis a system of interactive learning recipes designed to foster entrepreneurial thinking, new business startups, operating systems development, and business growth.",
                textAlign: TextAlign.center,
              ),
              const Divider(),
              OnlyDescription(
                  description:
                      "To enhance the effectiveness of the PIETM Program, you must first perceive the knowledge and training as necessary for your entrepreneurial development and small business success. Secondly, you must make a commitment to thoroughly completing all 12 Recipes (Interactive Learning Modules) and fully engaging yourself in the learning process. Upon completing Recipes (I-IV), participants will have completed a Personal life Plan (PLP) for entrepreneurial development."),
              const MyDivider(),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: OnlyTitle(title: "ABOUT THE AUTHOR"),
                decoration: BoxDecoration(
                    color: MyColor().orange,
                    borderRadius: BorderRadius.circular(50)),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text:
                        "Omar Aziz, Author, Educator and Development Agent of the Intellectual Capital Development Corporation (ICDC). ICDC is a consulting firm specializing in entrepreneurship education and small business development. ICDC provides consulting services to individuals, small businesses, corporations, educational institutions, non-profit organizations, and government agencies. \n\nHe holds a bachelor’s degree from the University of New Orleans and Graduate Studies in Executive Business Management from Louisiana State University. Served as Entrepreneur-In-Resident at ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: "Tulane University A.B. Freeman School of Business.",
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Linking.openMyLink(
                            "https://freeman.tulane.edu/", context);
                      },
                  ),
                  const TextSpan(
                    text:
                        "\n\nIn 1989, he founded the American Student Entrepreneurs Association (ASEA) and the ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18),
                  ),
                  const TextSpan(
                    text: "Participating In Entrepreneurship (PIETM)",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  const TextSpan(
                    text:
                        "Licensed Program. PIETM is an innovative entrepreneurship training program designed tfoster ownership/systems thinking and new business startups. \n\nIn 1993, the PIETM Licensed Program was featured in Entrepreneur Magazine. Over the past 25 years, the 12 recipes have been shared with many small business owners and student entrepreneurs, and the PIETM Program has been licensed for use in middle schools, high schools, colleges, economic development agencies and nonprofit organizations such as the Idea Village, Urban League Women Business Resource Center, New Orleans Jobs Initiative, New Jersey Business Enterprise Project, Young Christian Entrepreneurs, Governor Conference on Entrepreneurship, Department of Labor, and the U.S. Small Business Administration. \n\nIn January 2020, the creator of the PIETM Program became a Member of the United States Association for Small Business and Entrepreneurship (USASBE) and became a Certified Practitioner for the Entrepreneurial Mindset Profile (EMP). If you are interested in learning more about the EMP Certification or offering the EMP assessments to your students, employees or business clients, ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: "please talk with your PIETM Course Leader.",
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Linking.openMyLink(
                            "https://intellectualcdc.com/take-the-emp/",
                            context);
                      },
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () async {
                    URL =
                        "https://www.wwno.org/arts-culture/2016-11-22/celebrating-the-life-of-omar-bin-abdul-aziz";
                    Linking.openMyLink(URL, context);
                  },
                  child: Image.asset("asset/images/image2.png")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Linking.openMyLink(
                        "https://www.wwno.org/post/celebrating-life-omar-bin-abdul-aziz",
                        context);
                  },
                  icon: const Icon(Icons.volume_up_rounded),
                  label: const Text(
                    "Listen",
                    style: TextStyle(fontSize: 20),
                  )),
              const Text("ICDC...Where Knowledge Becomes PowerTM"),
              const SizedBox(
                height: 60,
              ),
              Card(
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TitleWithDesc(
                    title: " En tre pre neur,",
                    description:
                        "one who takes a calculated capital risk to produce goods and/or services to sell for the creation of profit.",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OnlyDescription(
                  description:
                      "Entrepreneurs generate the ideas; produce the goods and services, the jobs, and all the economic activities that drives the local economy. Given the widespread acceptance of the key role entrepreneurs play in our economy, Institutions of learning are ideal places for preparing young people and adults for careers as business owners. \n\nNot everyone is cut out to be an entrepreneur, but in today’s rapidly changing economic climate, not everyone is going to be able to find that “good job with a good company.” We need to work from the proposition that all students must be made aware of the important role of entrepreneurs in our economy and understand what is required to become a successful business owner/operator. \n\nIt is not only the students with predetermined business ownership goals, but all individuals who could benefit from entrepreneurship education & training. The employee who has respect, appreciation, and an understanding of entrepreneurship is more likely to be an asset to the company. Today’s business owners are looking for employees who can improve the “bottom line,” efficiently and cost effectively. The Participating In Entrepreneurship (PIETM) Program is the beginning of a life-long learning process that will develop in students, traits such as initiative, optimism, resourcefulness, risk taking, foresight, leadership skills, versatility, self- determination, and a spirit of ownership."),
              const MyDivider(),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: OnlyTitle(title: "Introduction"),
                decoration: BoxDecoration(
                    color: MyColor().orange,
                    borderRadius: BorderRadius.circular(50)),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TitleWithDesc(
                    title: " Rec·i·pe,",
                    description:
                        "a procedure for accomplishing or achieving something.",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TitleWithDesc(
                  title: "Participating In Entrepreneurship:",
                  description:
                      "12 Recipes for Entrepreneurial Success is your guide to personal and professional achievement. This is a step-by-step recipe book designed to make new entrepreneurs more comfortable with the technicalities and red tape involved in starting a new venture. Written with you in mind, Participating In Entrepreneurship (PIETM) contains 12 easy-to-follow recipes created to enhance the entrepreneurship learning process. The recipes are designed to facilitate analytical competence and the application of pertinent knowledge needed to succeed in business and in life. \n\nThere are several things that are required to enhance the effectiveness of the PIETM Program. \n\nYou must first perceive the knowledge and training as necessary for your entrepreneurial development and small business or workplace success. You must also make a commitment to thoroughly completing all 12 recipes, and fully engaging yourself in the learning process. The entrepreneurship learning process starts with a thorough assessment of the internal In· gre· di· ents or intellectual capital needed to accomplish the action steps. When making a pie, the quality of the ingredients will have a major impact on the quality of the finished product. So, it is imperative that you start with high quality ingredients. \n\nRecipes I-IV are designed to help you identify the ingredients needed through self-assessment exercises. These self-assessment exercises will provide the building blocks for your personal development and the foundation for your entrepreneurial achievement. Each recipe contains:"),
              HeadingListItem(
                  heading: "1. Achievement-based Objective (ABOs) ",
                  text:
                      "\nUpon completing... \nRecipe I, you will have examined the internal ingredients successful people are made of. \nRecipe II, you will have discovered the entrepreneurial qualities within you. \nRecipe III, you will have identified the basic skills needed for personal and business achievement. Recipe IV, you will have practiced creative applications and written your Personal Life Plan (PLP). \n\nThe remaining Recipes V-XII will provide the basic tools needed to build your business."),
              HeadingListItem(
                  heading: "2. Action Steps. ",
                  text:
                      "\nAction steps combine ingredients together in measured proportions and put into motion success strategies through habitual activity and modes of behavior. These action steps are provided with each recipe and are designed to do the following:"),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    HeadingListItem(
                        heading: "*Enhance learning through facilitation. ",
                        text:
                            "\nBy asking questions and engaging the reader in self-discovery during the learning process, the potential for learning is greater."),
                    HeadingListItem(
                        heading: "*Provide you with constant feedback",
                        text:
                            "\nThis will include tests, field assignments, and other methods that will allow you to demonstrate what you have learned. Action steps reinforce the learning process, creating a balance between business theory and business practice."),
                    HeadingListItem(
                        heading:
                            "*Provide a logical easily comprehensible format. ",
                        text:
                            "\nNew and complex subjects are divided into simple, readily understandable steps."),
                    HeadingListItem(
                        heading: "*Present real-world applications.",
                        text:
                            "\nThe information presented in each of the 12 Recipes are based on business experience from entrepreneurs who have started, operated, and managed multiple businesses."),
                  ],
                ),
              ),
              HeadingListItem(
                  heading: "3. Review and Affirmations: ",
                  text:
                      "\nThis is the testing phase of the recipe, and in this phase, we can determine if the first two phases were properly done. If you selected quality ingredients and completed the action steps as instructed, you are ready to move on to phase four of the recipes."),
              HeadingListItem(
                  heading: "4. Finished product (outcome) phase.",
                  text:
                      "\nAfter each phase of the recipe is complete, you should have a completed product to incorporate into your overall business."),
              const SizedBox(
                height: 20,
              ),
              OnlyDescription(
                  description:
                      "Participating In Entrepreneurship: (3) major outcomes are:\n    1. Personal Life Plan (PLP) is the outcome of Recipes I-IV.\n    2. Preliminary Business Plan (PBP) is the outcome of Recipes V-XI.\n    3. A better understanding of entrepreneurship education and the tools needed for small business success. \nThe PIE recipes are designed to meet the needs of young people and working adults in an ever-changing economy. The student who understands how to start, own, and operate a business will have greater opportunities for success on the job and as an entrepreneur. \n\nPIE provides entrepreneurship/ownership training for aspiring entrepreneurs, educators, and community leaders who are interested in building the entrepreneurial capacity of their communities."),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text:
                        "Upon completing the PIE 12 Recipes For Small Business Success, you will have: \n(Achievement Based Objectives-ABOs)",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18),
                  ),
                  TextSpan(
                    text:
                        "\n\nReturn to this page and check off each ABOs that were completed",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GFCheckbox(
                    onChanged: (boolean) {},
                    value: true,
                    activeIcon: const Icon(Icons.check_box),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Completed Take 21 BNA"),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Accordion(
                children: [
                  AccordionSection(
                    header: OnlyTitle(title: "title"),
                    headerBackgroundColor: MyColor().orange,
                    contentBorderWidth: 0.0,
                    content: RecepieCardLeft(
                      title: "Card Title",
                      description: "Card Description",
                      image: "asset/images/image2.png",
                    ),
                    contentHorizontalPadding: 0.0,
                    contentVerticalPadding: 0.0,
                  ),
                ],
              ),
              OnlyDescription(
                  description:
                      "Review the Action Steps, reflect on where you are in your business now and where you hope to be. Also THINK about the SKILLS, KNOWLEGDE and MINDSET you will need to get you there."),
              const Text(
                "Notes, Thoughts, Ideas, and Suggestions",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextArea(
                  field_controller: _field_controller,
                  hint: "Your can write here..."),
              const SizedBox(
                height: 60,
              ),
              NextBackButton(
                text: "Recepie I",
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                page: const Recepie1(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 25,
        backgroundColor: MyColor().darkOrange,
        onPressed: () {
          // ignore: avoid_print
          print("Saving this text: ${_field_controller.text}");
        },
        child: const Icon(Icons.save_rounded),
        tooltip: "Tap to save the form",
      ),
    );
  }
}
