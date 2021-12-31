// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyDiscription extends StatelessWidget {
  String text;
  MyDiscription({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 20, fontFamily: "Roboto"),
    );
  }
}

class MyTitle extends StatelessWidget {
  String text;
  MyTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontSize: 26, fontWeight: FontWeight.bold, fontFamily: "Quicksand"),
    );
  }
}
