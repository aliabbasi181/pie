import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pie/colors.dart';
import 'package:pie/global.dart';
import 'package:pie/login/login.dart';
import 'package:pie/widgets/bullet_list.dart';
import 'package:pie/widgets/my_text_styles.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  final introKey = GlobalKey<IntroductionScreenState>();
  late AnimationController controller;
  late Animation<Offset> offset;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    offset = Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, 1.0))
        .animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().backgroundColor,
      body: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: MyColor().backgroundColor,
          isTopSafeArea: true,
          isBottomSafeArea: true,
          onDone: () {
            GlobalAsset.isAppOpenFirstTime = false;
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const Login(),
            //   ),
            // );
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  child: const Login(),
                  duration: const Duration(milliseconds: 800),
                  inheritTheme: true,
                  ctx: context),
            );
          },
          onSkip: () {
            GlobalAsset.isAppOpenFirstTime = false;
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Login()),
            // );
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  child: const Login(),
                  duration: const Duration(milliseconds: 800),
                  inheritTheme: true,
                  ctx: context),
            );
          },
          done: const Text("Lets Go!",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold)),
          skip: const Text("Skip",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold)),
          next: const Text("Next",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold)),
          showNextButton: true,
          showDoneButton: true,
          showSkipButton: true,
          pages: [
            PageViewModel(
                image: const Hero(
                  tag: 'myTag2',
                  child: Image(
                    image: AssetImage('asset/images/logo.png'),
                    fit: BoxFit.contain,
                    height: 450,
                    width: 300,
                  ),
                ),
                titleWidget: MyTitle(
                    text: "Enterpreneurship Learning Management System"),
                bodyWidget: MyDiscription(
                  text: "12 Recipies for Small Business Success!",
                ),
                decoration: const PageDecoration(imageFlex: 3)),
            PageViewModel(
                image: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Hero(
                    tag: 'myTag1',
                    child: Image(
                      image: AssetImage('asset/images/image2.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                titleWidget: MyTitle(text: "A Family Legacy of Pies"),
                bodyWidget: Column(
                  children: [
                    MyDiscription(
                      text:
                          "In Loving Memories of Omar “the Pieman” (my dad) and Haneefah Aziz (my mom) for instilling in  me the spirit of entrepreneurship and a love for teaching others to how “get their piece of the pie”",
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "PIE FOR EDUCATORS, STUDENTS & BUSINESS OWNERS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                  ],
                ),
                decoration: const PageDecoration(imageFlex: 1)),
            PageViewModel(
                image: const Hero(
                  tag: 'myTag',
                  child: Image(
                    image: AssetImage('asset/images/logo.png'),
                    fit: BoxFit.contain,
                    height: 450,
                    width: 300,
                  ),
                ),
                titleWidget: MyTitle(text: "Building Skills, Building Careers"),
                bodyWidget: Column(
                  children: [
                    MyListItem(text: "Interactive Learning Modules"),
                    MyListItem(text: "Foster Enterpreneur Thinking"),
                    MyListItem(text: "Business Needs Analysis"),
                    MyListItem(text: "Innovative Startup Tools"),
                    MyListItem(text: "Stretigic Business Plaining"),
                  ],
                ),
                footer: MyTitle(
                  text: "TAKE OWNERSHIP OF YOUR FUTURE",
                ),
                decoration: const PageDecoration(imageFlex: 1)),
          ],
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: MyColor().darkOrange,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)))),
    );
  }
}
