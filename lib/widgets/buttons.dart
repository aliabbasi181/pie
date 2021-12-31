// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../colors.dart';

class NextBackButton extends StatelessWidget {
  String text;
  Icon icon;
  Widget page;
  NextBackButton(
      {Key? key, required this.text, required this.icon, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.fromLTRB(30, 15, 30, 15)),
          backgroundColor: MaterialStateProperty.all(MyColor().brown),
          elevation: MaterialStateProperty.all(25),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          )),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
        icon: icon,
        label: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ));
  }
}
