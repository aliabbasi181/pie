// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TitleWithDesc extends StatelessWidget {
  String title, description;
  TitleWithDesc({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 26),
        ),
        Text(
          description,
          style: const TextStyle(fontFamily: "Roboto", fontSize: 18),
        ),
      ],
    );
  }
}

class OnlyDescription extends StatelessWidget {
  String description;
  OnlyDescription({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(fontFamily: "Roboto", fontSize: 18),
    );
  }
}

class OnlyTitle extends StatelessWidget {
  String title;
  OnlyTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontFamily: "Quicksand", fontWeight: FontWeight.bold, fontSize: 26),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        Divider(color: Colors.black54),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
