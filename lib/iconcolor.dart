import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class ColoredBorderIcon extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final Color borderColor;
  final double borderWidth;
  final double size;

  const ColoredBorderIcon({
    required this.iconData,
    required this.iconColor,
    required this.borderColor,
    required this.borderWidth,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        color: borderColor,
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: EdgeInsets.all(borderWidth),
        decoration: BoxDecoration(
          color: iconColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          size: size,
          color: Colors.white,
        ),
      ),
    );
  }
}
