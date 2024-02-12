// MyDashboard.dart

import 'package:designfyp/Notification/Notification.dart';
import 'package:designfyp/customiconplus.dart';
import 'package:designfyp/searchbutton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
    final Uri _url = Uri.parse(
      'https://mediafiles.botpress.cloud/97d8f310-5991-4eb3-9125-bdffd5d65332/webchat/bot.html');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Category Image
                  GestureDetector(
                    onTap: () {
                      _onItemTapped(0);
                    },
                    child: Image.asset(
                      'assets/Group.png', // Replace with your image asset path
                      width: 28,
                      height: 28,
                    ),
                  ),

                  // Location Image and Text
                  Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 29.0),
                          child: Image.asset(
                            'assets/location.png', // Replace with your image asset path
                            width: 19.0,
                            height: 19.0,
                          ),
                        ),
                        SizedBox(width: 14.0),
                        Text('Islamabad, Pakistan'),
                      ],
                    ),
                  ),
                  SizedBox(width: 26.0),

                  // Chat Image
                  GestureDetector(
                    onTap: () {
                       launchUrl(_url);
                            //  _launchMessageUrl(); // Launch the URL when the "Message" button is clicked

                             _onItemTapped(1);
                    },
                    child: Image.asset(
                      'assets/message.png', // Replace with your image asset path
                      width: 20.0,
                      height: 20.0,
                    ),
                  ),
                  SizedBox(width: 16.0),

                  // Notification Image
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyNotification()),
                      );
                      _onItemTapped(2);
                    },
                    child: Image.asset(
                      'assets/notification.png', // Replace with your image asset path
                      width: 28.0,
                      height: 28.0,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.0),

              SearchButton(),
            ],
          ),
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
                _onItemTapped(0);
              },
              child: Image.asset(
                'assets/Home.png', // Replace with your image asset path
                width: 24.0,
                height: 24.0,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                _onItemTapped(1);
              },
              child: Image.asset(
                'assets/Booking.png', // Replace with your image asset path
                width: 24.0,
                height: 24.0,
              ),
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon:CustomCenterIcon(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                _onItemTapped(3);
              },
              child: Image.asset(
                'assets/message.png', // Replace with your image asset path
                width: 24.0,
                height: 24.0,
              ),
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                _onItemTapped(4);
              },
              child: Image.asset(
                'assets/profile.png', // Replace with your image asset path
                width: 24.0,
                height: 24.0,
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
