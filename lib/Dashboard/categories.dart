import 'package:designfyp/Dashboard/PopularCategories.dart';
import 'package:designfyp/ShowAllCleaner/MyCleaner.dart';
import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -48), // Adjust the value to move the column upward
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildImageWithText('assets/cleaning_category.png', 'Cleaner', () {
                // Handle the click event for the first image and text
                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CleanerScreen()),
                      );
              }),
              _buildImageWithText('assets/rep_category.png', 'Repairers', () {
                // Handle the click event for the second image and text
             
              }),
              _buildImageWithText('assets/pain_category.png', 'Painters', () {
                // Handle the click event for the third image and text
             
              }),
              _buildImageWithText('assets/gardening_category.png', 'Gardeners', () {
                // Handle the click event for the fourth image and text
             
              }),
              // _buildImageWithText('assets/electrican_category.png', 'Electricians', () {
              //   // Handle the click event for the fifth image and text
           
              // }),
            ],
          ),
          SizedBox(height: 5),
          ShowPopularCategories(),
        ],
      ),
    );
  }

  Widget _buildImageWithText(
      String imagePath, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          imagePath,
                          width: 48,
                          height: 54,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
