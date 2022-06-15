import 'package:flutter/material.dart';

class SizeConfig{
  static double width(context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(context) {
    return MediaQuery.of(context).size.width;
  }
  static const kPaddingHor16Ver4 = EdgeInsets.symmetric(horizontal: 16, vertical: 4);
  static const kPaddingHor8Ver4 = EdgeInsets.symmetric(horizontal: 8, vertical: 4);
}