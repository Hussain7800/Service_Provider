

import 'package:designfyp/Provider/P_Dashboard/PopularCategories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProviderDataShow());
}

class ProviderDataShow extends StatelessWidget {
  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildBox(
                imageAsset: 'assets/work.png',
                buttonText: '4',
                totalBookingText: 'Total Booking',
              ),
              SizedBox(width: 15),
              _buildBox(
                imageAsset: 'assets/work.png',
                buttonText: '45',
                totalBookingText: 'Total Services',
              ),
            ],
          ),
          SizedBox(height: 20), // Adjust the vertical space between the upper and lower boxes
          Row(
            children: [
              _buildBox(
                imageAsset: 'assets/work.png',
                buttonText: '3',
                totalBookingText: 'Total Workers',
              ),
              SizedBox(width: 15),
              _buildBox(
                imageAsset: 'assets/work.png',
                buttonText: '30000',
                totalBookingText: 'Total Revenue',
              ),
            ],
          ),
       SizedBox(height: 14,),
      ShowPopularProvider(),
   //    ProviderCategoriesBox(),
        ],
      ),
    );
  }

  Widget _buildBox({
    required String imageAsset,
    required String buttonText,
    required String totalBookingText,
  }) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 142,
        width: 159,
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(19),
          color: Colors.white, // Set the background color to white
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () => _showInputDialog(context!),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // Set background color to transparent
                      elevation: 0, // Remove the shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Color(0xFF6BC3FE),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image.asset(
                    imageAsset,
                    height: 17,
                    width: 17,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              totalBookingText,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5,),
          
          ],
          
          
        ),
      
      ),
      
      
    );
    
  }

  void _showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Enter new text'),
        content: TextField(
          onChanged: (value) {
            // Handle user input if needed
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Handle button text change
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
