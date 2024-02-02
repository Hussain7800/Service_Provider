import 'package:designfyp/CategoriesPage/AllCategoriespage1.dart';
import 'package:designfyp/Dashboard/DashboardshowCatgories.dart';
import 'package:designfyp/Dashboard/horizontalCategories.dart';
import 'package:flutter/material.dart';


class ShowPopularCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Container(
      margin: EdgeInsets.only(top: 31,right: 73),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Text
          Text(
            'Popular Categories',
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
              padding: const EdgeInsets.only(bottom: 16.0,left: 40),
              child: Transform.translate(
                offset: Offset(79, -38), // Adjust the value to move the text upward
                child: Padding(
                  padding: const EdgeInsets.only(left: 103.0),
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
          ),
          SizedBox(
            height: 5,
          ),
        HorizontallyScrollableContainer(),
        ],
      ),
    );
 
  }
}
