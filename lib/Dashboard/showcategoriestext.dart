import 'package:designfyp/CategoriesPage/AllCategoriespage1.dart';
import 'package:designfyp/Dashboard/categories.dart';
import 'package:flutter/material.dart';

class ShowCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Text
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          // Your existing horizontal list of categories
          // ...

          // "View All" Button
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Transform.translate(
                offset: Offset(0, -29), // Adjust the value to move the text upward
                child: TextButton(
                  onPressed: () {
                    // Handle the "View All" button click
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllCategoryScreen()),
                    );
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF002DCC),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          MyCategory(),
        ],
      ),
    );
 
  }
}
