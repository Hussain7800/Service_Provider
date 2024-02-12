import 'package:flutter/material.dart';

class MyNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6BC3FE),
      body: SafeArea(
         child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 852,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle back button click
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Notification',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15), // Spacer with height 15

              // Notification content
              Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
             Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
             Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
             Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
             Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
             Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
             Container(
                height: 100,
                width: 381,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7), // Border radius of 7
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Circular image
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/2.png'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Small horizontal space

                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 11),
                          Text(
                            'Plumber',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            'Your plumber service booking...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4), // Small vertical space
                          Text(
                            '4 min ago',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 12,),
            
            ],
          ),
        ),
      ),)
    );
  }
}
