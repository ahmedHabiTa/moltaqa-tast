import 'package:flutter/material.dart';

import '../Constants/app_themes.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const CustomIcon({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: 35,
    );
  }
}
