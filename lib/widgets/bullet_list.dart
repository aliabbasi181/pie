// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie/colors.dart';

class MyListItem extends StatelessWidget {
  String text;
  MyListItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 5),
      child: Row(
        children: [
          Icon(CupertinoIcons.arrowtriangle_right_fill,
              color: MyColor().darkOrange),
          const SizedBox(
            width: 5,
          ),
          Text(text,
              softWrap: true,
              style: const TextStyle(
                fontFamily: "Roboto",
                fontSize: 20,
              )),
        ],
      ),
    );
  }
}

class HeadingListItem extends StatelessWidget {
  String heading, text;
  HeadingListItem({Key? key, required this.heading, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: heading,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: "Roboto",
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
        TextSpan(
          text: text,
          style: const TextStyle(
              color: Colors.black, fontFamily: "Roboto", fontSize: 18),
        ),
      ])),
    );
  }
}

class ObjectivePoints extends StatelessWidget {
  String heading, text;
  ObjectivePoints({Key? key, required this.heading, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 0),
      child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(children: [
            TextSpan(
              text: heading,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Roboto",
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: text,
              style: const TextStyle(
                  color: Colors.black, fontFamily: "Roboto", fontSize: 18),
            ),
          ])),
    );
  }
}
