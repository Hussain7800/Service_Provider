import 'package:designfyp/Provider/Notification/Notification.dart';
import 'package:designfyp/Provider/P_Dashboard/providerDataShow.dart';
import 'package:designfyp/customiconplus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProviderDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<ProviderDashboard> {
  final Uri _url = Uri.parse(
      'https://mediafiles.botpress.cloud/97d8f310-5991-4eb3-9125-bdffd5d65332/webchat/bot.html');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
//  void _launchMessageUrl() async {
//     const url = 'https://mediafiles.botpress.cloud/97d8f310-5991-4eb3-9125-bdffd5d65332/webchat/bot.html'; // Replace with your actual URL
//     // ignore: deprecated_member_use
//     if (await canLaunch(url)) {
//       // ignore: deprecated_member_use
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the main Column in SingleChildScrollView
        child: Container(
          color: Color(0xFFE7F7FA),
          child: Column(
            children: [
              Container(
                color: Color(0xFFF0F0F0),
                padding: EdgeInsets.only(
                    top: 16.0, left: 21.0, right: 21.0, bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Profile Image with Border Radius
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: GestureDetector(
                            onTap: () {
                              _onItemTapped(0);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Image.asset(
                                'assets/cleaning_offers.png',
                                width: 78,
                                height: 78,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 148.0),
                        GestureDetector(
                          // onDoubleTap: _launchMessageUrl,
                          onTap: () {
                            launchUrl(_url);
                            //  _launchMessageUrl(); // Launch the URL when the "Message" button is clicked

                             _onItemTapped(1);
                          },
                          child: Image.asset(
                            'assets/message.png',
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyNotification()),
                            );
                            _onItemTapped(2);
                          },
                          child: Image.asset(
                            'assets/notification.png',
                            width: 28.0,
                            height: 28.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),

                    // Greeting Text
                    Text(
                      'Hi, Sarah Grace',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Welcome Text
                    Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              ProviderDataShow(),

              // Other content of the screen goes here
              // ...

              SizedBox(
                  height:
                      200), // Add some extra space at the bottom for demonstration
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
                'assets/Home.png',
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
                'assets/Booking.png',
                width: 24.0,
                height: 24.0,
              ),
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
                _onItemTapped(3);
              },
              child: Image.asset(
                'assets/message.png',
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
                'assets/profile.png',
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
