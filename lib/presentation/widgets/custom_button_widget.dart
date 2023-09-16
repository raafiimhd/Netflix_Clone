import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoustomButtonWidget extends StatelessWidget {
  const CoustomButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize = 30,
    this.textSize = 18,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.white,
  });

  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  final FontWeight fontWeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}