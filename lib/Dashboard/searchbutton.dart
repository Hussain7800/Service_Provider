import 'package:flutter/material.dart';
import 'package:designfyp/offers.dart'; // Import the file containing MyOffers widget

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 358,
          height: 53,

          child: ClipRRect(
            borderRadius: BorderRadius.circular(18.0),

            child: ElevatedButton.icon(
              onPressed: () {
                // Handle the search button click
              },
              icon: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.search,
                  color: Color(0xFF6BC3FE), // Set the search icon color
                ),
              ),
              label: Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Search',
                    style: TextStyle(color: Color(0xFF6BC3FE)), // Set the text color
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFFE7F7FA),
                // ignore: deprecated_member_use
                primary: Color(0xFF6BC3FE), // Set the background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Color(0xFF6BC3FE), // Set the border color
                    width: 2.0, // Set the border width
                  ),
                ),
              ),
            ),
          ),
        ),

        // SizedBox
        SizedBox(height: 16.0),

        // MyOffers widget from the MyOffers file
        MyOffers(),
      ],
    );
  }
}
