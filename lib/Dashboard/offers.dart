import 'package:designfyp/Dashboard/showcategoriestext.dart';
import 'package:flutter/material.dart';

class MyOffers extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/wal_off.png',
    'assets/cl_off.png',
    'assets/pl_off.png',
  ];

  final List<String> titles = [
    'Wall Painting Services',
    'Cleaning Services',
    'Plumber Services',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 186,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      width: 286,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFFD0DDFF),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  titles[index], // Use the corresponding title
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              SizedBox(
                                height: 38,width: 150,
                                child: Text('Make your ${titles[index].toLowerCase()} stylish')),
                              SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0, left: 21),
                                child: Container(
                                  height: 30,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromARGB(255, 29, 110, 190),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Book Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 96,
                            height: 167,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                imagePaths[index],
                                width: 58,
                                height: 167,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        ShowCategories(),
      ],
    );
  }
}
