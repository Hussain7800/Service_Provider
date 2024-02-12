import 'package:flutter/material.dart';

class ProviderCategoriesBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoriesBoxItem(
          imagePath: 'assets/cleaner.png',
          title: 'Home Cleaning 1',
          subTitle: 'Cleaner 1',
          yOffset: -45,
          alignment: CrossAxisAlignment.start,
        ),
        SizedBox(width: 16), // Adjust the spacing between boxes
        CategoriesBoxItem(
          imagePath: 'assets/cleaner.png',
          title: 'Home Cleaning 2',
          subTitle: 'Cleaner 2',
          yOffset: -45,
          alignment: CrossAxisAlignment.end,
        ),
          SizedBox(width: 16), // Adjust the spacing between boxes
        CategoriesBoxItem(
          imagePath: 'assets/cleaner.png',
          title: 'Home Cleaning 2',
          subTitle: 'Cleaner 2',
          yOffset: -45,
          alignment: CrossAxisAlignment.end,
        ),
          SizedBox(width: 16), // Adjust the spacing between boxes
        CategoriesBoxItem(
          imagePath: 'assets/cleaner.png',
          title: 'Home Cleaning 2',
          subTitle: 'Cleaner 2',
          yOffset: -45,
          alignment: CrossAxisAlignment.end,
        ),
          SizedBox(width: 16), // Adjust the spacing between boxes
        CategoriesBoxItem(
          imagePath: 'assets/cleaner.png',
          title: 'Home Cleaning 2',
          subTitle: 'Cleaner 2',
          yOffset: -45,
          alignment: CrossAxisAlignment.end,
        ),
      ],
    );
  }
}

class CategoriesBoxItem extends StatelessWidget {
  // Variables to customize the content
  final String imagePath;
  final String title;
  final String subTitle;
  final double yOffset;
  final CrossAxisAlignment alignment;

  // Constructor to initialize the variables
  CategoriesBoxItem({
    required this.imagePath,
    required this.title,
    required this.subTitle,
    this.yOffset = -0.0,
    this.alignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(11, -39),
      child: Container(
        height: 194,
        width: 103,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: alignment,
          children: [
            Container(
              height: 124,
              width: 139,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}
