import 'package:designfyp/Dashboard/dashboard.dart';
import 'package:designfyp/getStarted.dart';
import 'package:designfyp/signup.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(UserSignIn());
}

class UserSignIn extends StatelessWidget {
  const UserSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Image.asset(
              'assets/signin.PNG', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.0, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
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
                    'Sign In',
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
                      // Handle the button click
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyDashboard()),
                      );
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
                              MaterialPageRoute(
                                builder: (context) => UserSignUp(),
                              ),
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
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'assets/Email.png', // Replace with your image asset path
                            color: Color(0xFF6BC3FE), // Set the image color
                          ),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(right: 190.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Email',
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
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 29),
                  child: Container(
                    width: 258,
                    height: 53,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle the button click
                        },
                        child: GestureDetector(
                          onTap: () {
                            // Handle the button click
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => getStarted(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4, left: 69),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                   color: Color(0xFF0099FF),
                                ),
                              ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
