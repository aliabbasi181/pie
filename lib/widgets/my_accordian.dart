// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../colors.dart';

class MyAccordian extends StatelessWidget {
  String title;
  String description;
  // ignore: non_constant_identifier_names
  MyAccordian({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      titleChild: Text(
        title,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      contentChild: Text(
        description,
        style: const TextStyle(fontSize: 18, color: Colors.black),
      ),
      collapsedTitleBackgroundColor: MyColor().darkOrange,
      expandedTitleBackgroundColor: Colors.blueGrey,
      contentBackgroundColor: MyColor().backgroundColor,
      titleBorderRadius: const BorderRadius.all(Radius.circular(10)),
      contentBorderRadius: const BorderRadius.all(Radius.circular(10)),
      titlePadding: const EdgeInsets.all(20),
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      collapsedIcon: const Icon(
        CupertinoIcons.arrowtriangle_down_circle,
        color: Colors.white,
      ),
      expandedIcon: const Icon(
        CupertinoIcons.arrowtriangle_up_circle,
        color: Colors.white,
      ),
    );
  }
}
