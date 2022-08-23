import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFildCampInfo extends StatelessWidget {
  String hintTextCamp;
  TextFildCampInfo({
    Key? key,
    required this.hintTextCamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintTextCamp,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
