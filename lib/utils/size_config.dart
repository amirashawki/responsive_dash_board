import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1000;
  static const double tablet = 700;

  static late double width, height;
  void init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
