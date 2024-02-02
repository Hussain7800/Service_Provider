import 'package:designfyp/signin.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(UserSignUp());
}

class UserSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity, // Cover the whole width
            height: 150, // Set the height to 100
            child: Image.asset(
              'assets/signup.PNG', // Replace with your image asset path
              fit: BoxFit.cover, // Cover the whole container
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.0, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Your existing code here...
                // ...

                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 12),
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
                          padding: const EdgeInsets.only(right: 200.0),
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
                            'assets/profile.png', // Replace with your image asset path
                            color: Color(0xFF6BC3FE), // Set the image color
                          ),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(right: 160.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Username',
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
                SizedBox(height: 2,),
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
                            'assets/password.png', // Replace with your image asset path
                            color: Color(0xFF6BC3FE), // Set the image color
                          ),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(right: 160.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Password',
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
                SizedBox(height: 2,),
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
                            'assets/password.png', // Replace with your image asset path
                            color: Color(0xFF6BC3FE), // Set the image color
                          ),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(right: 120.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Confirm Password',
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
           
                SizedBox(height: 2,),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 12),
                  child: Container(
                    width: 308,
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
      MaterialPageRoute(builder: (context) => UserSignIn()),
    );
                      },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 120.0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4,left: 99),
                              child: Text(
                                'Sign up',
                                
                                style:
                                 TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                 color: Color(0xFF0099FF),
                                  )
                                ,
                              
                               
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
