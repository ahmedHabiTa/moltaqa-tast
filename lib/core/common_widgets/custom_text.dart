import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextDirection? textDirection;
  final TextStyle textStyle;

  const CustomText({
    Key? key,
    required this.text,
    this.maxLines,
    this.textDirection,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      maxLines: maxLines,
      style: textStyle,
    );
  }
}
