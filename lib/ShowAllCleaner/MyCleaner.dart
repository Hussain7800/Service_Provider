// CleanerScreen.dart

import 'package:flutter/material.dart';

class CleanerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cleaner',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cleaner Card 1
            _buildCleanerCard(
              name: 'Sarah Grace',
              role: 'Cleaner',
              jobs: '56',
              rate: 'Rs240/hr',
              rating: '4.5',
              imagePath: 'assets/2.png',
            ),

            // Spacer with height 5
            SizedBox(height: 5),

            // Cleaner Card 2
            _buildCleanerCard(
              name: 'John Doe',
              role: 'Cleaner',
              jobs: '30',
              rate: 'Rs200/hr',
              rating: '4.2',
              imagePath: 'assets/cleaner.png',
            ),

            // Spacer with height 5
            SizedBox(height: 5),

            // Cleaner Card 3
            _buildCleanerCard(
              name: 'Emma Smith',
              role: 'Cleaner',
              jobs: '45',
              rate: 'Rs220/hr',
              rating: '4.8',
              imagePath: 'assets/cleaning_offers.png',
            ),

            // Spacer with height 5
            SizedBox(height: 5),

            // Cleaner Card 4
            _buildCleanerCard(
              name: 'Michael Johnson',
              role: 'Cleaner',
              jobs: '65',
              rate: 'Rs260/hr',
              rating: '4.9',
              imagePath: 'assets/cleaner.png',
            ),

            // Spacer with height 5
            SizedBox(height: 5),

            // Cleaner Card 5
            _buildCleanerCard(
              name: 'Ava Williams',
              role: 'Cleaner',
              jobs: '40',
              rate: 'Rs210/hr',
              rating: '4.7',
             imagePath: 'assets/cleaner.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCleanerCard({
    required String name,
    required String role,
    required String jobs,
    required String rate,
    required String rating,
    required String imagePath,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 7),
      width: 351,
      height: 151,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  role,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Jobs',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Rate',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Text(
                        'Rating',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                // Additional text below "Jobs", "Rate", and "Rating"
                Row(
                  children: [
                    Text(
                      jobs,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(left:11.0),
                      child: Text(
                        rate,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 4),
                        Text(
                          rating,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Spacer to create space between left and right side
          Spacer(),

          // Right side image
          Container(
            width: 128,
            height: 159,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath), // Use the provided image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CleanerScreen(),
  ));
}
