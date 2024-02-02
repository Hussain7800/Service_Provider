import 'package:designfyp/CategoriesPage/AllCategoriespage2.dart';
import 'package:designfyp/customiconplus.dart';
import 'package:flutter/material.dart';

class AllCategoryScreen extends StatelessWidget {
  var _onItemTapped;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 270,
              color: Color(0xFFE7F7FA),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  // Field One
                  Container(
                    width: double.infinity,
                    height: 270,
                    child: Stack(
                      children: [
                        // Circle
                        Positioned(
                          left: 10,
                          top: 50,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Handle circle image click
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/2.png'), // Replace with your image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Field Two
                  Positioned(
                    right: 10,
                    top: 50,
                    child: Container(
                      width: 102,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(68),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              'assets/2.png', // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Map',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox
                  Positioned(
                    top: 85, // Adjust the top position as needed
                    child: SizedBox(
                      height: 10,
                      width: double.infinity,
                    ),
                  ),
                  // Location Icon and Text
                  Positioned(
                    left: 10,
                    top: 120, // Adjust the top position as needed
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle location icon click
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Icon(
                              Icons.location_on,
                              size: 24,
                              color: Colors.white, // Change location icon color to white
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 19.0),
                              child: Text(
                                'Islamabad, Pakistan',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(right: 22.0),
                              child: Text(
                                'Choose your service what you need',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Search Field
                  Positioned(
                    top: 210, // Adjust the top position as needed
                    left: 65,
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF6BC3FE),
                          borderRadius: BorderRadius.circular(51),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 24,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //  SizedBox(height: 400,),

                ],
              ),
            ),
            AllCategory(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Handle Home Icon click
                _onItemTapped(0);
              },
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Handle Booking Icon click
                _onItemTapped(1);
              },
              child: Icon(Icons.calendar_month),
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: CustomCenterIcon(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Handle Message Icon click
                _onItemTapped(3);
              },
              child: Icon(Icons.message),
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Handle Account Icon click
                _onItemTapped(4);
              },
              child: Icon(Icons.account_circle),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
