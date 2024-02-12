

import 'package:designfyp/Provider/ProviderRegisterationProcess/provider_Signup.dart';
import 'package:designfyp/RegisterationProcess/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 66.0, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                // style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'S',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      color: Color(0xFF4F9AFF), // Color for "S"
                    ),
                  ),
                  TextSpan(
                    text: 'ervice ',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'P',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      color: Color(0xFF4F9AFF),
                    ),
                  ),
                  TextSpan(
                    text: 'rovider',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38.0, left: 20),
              child: Text(
                'Select type',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 30),
              child: Text(
                'Please fill the credentials',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 12),
              child: GestureDetector(
  onTap: () {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => UserSignUp()),
    // );
  },
                child: Container(
                  width: 308,
                  height: 53,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle the button click
                        Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserSignUp()),
    );
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/profile.png', // Replace with your image asset path
                          color: Color(0xFF6BC3FE), // Set the image color
                        ),
                      ),
                      label: Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            'User',
                            style: TextStyle(color: Color(0xFF6BC3FE)),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFFE7F7FA),
                        primary: Color(0xFF6BC3FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Color(0xFF6BC3FE),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 12),
              child: Container(
                width: 308,
                height: 53,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Handle the button click
                        Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProviderSignUp()),
    );
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/profile.png', // Replace with your image asset path
                        color: Color(0xFF6BC3FE), // Set the image color
                      ),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(right: 190.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'Provider',
                          style: TextStyle(color: Color(0xFF6BC3FE)),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFFE7F7FA),
                      primary: Color(0xFF6BC3FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color(0xFF6BC3FE),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top:220.0,),
            child: Expanded(
              child: Container(
                height: 100,
                width: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/selectpage_image.png'), // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),  
                  ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
