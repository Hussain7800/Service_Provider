import 'package:flutter/material.dart';

class CustomCenterIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF6BC3FE), // Set the circle color
      ),
      child: Center(
        child: Image.asset(
          'assets/plus.png', // Replace with the path to your image asset
          color: Colors.white, // Set the color of the image
        ),
      ),
    );
  }
}
