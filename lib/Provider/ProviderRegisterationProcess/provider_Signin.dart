// import 'dart:js';


// import 'package:designfyp/Notification/firebase_auth.dart';
import 'package:designfyp/Provider/ProviderStartedpages/getStarted.dart';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProviderSignIn extends StatelessWidget {
  ProviderSignIn({super.key});
  // final FirebaseAuthService _auth = FirebaseAuthService();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
    @override
  //  void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
   
  // }
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  'assets/signin.PNG',
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
                              color: Color(0xFF4F9AFF),
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
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color(0xFF6BC3FE)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'assets/Email.png',
                              color: Color(0xFF6BC3FE),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6BC3FE),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6BC3FE),
                              width: 2.0,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFE7F7FA),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email.';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                              .hasMatch(value)) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10), // Adjust spacing between fields
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 12),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color(0xFF6BC3FE)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'assets/password.png',
                              color: Color(0xFF6BC3FE),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6BC3FE),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6BC3FE),
                              width: 2.0,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFE7F7FA),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password.';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ), // Adjust spacing between fields
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 29),
                      child: Container(
                        width: 258,
                        height: 53,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Validation passed, handle sign-in logic here
                                // For example, you can call a sign-in API or navigate to the next screen.
                                // For now, let's just print the email and password.
                                print('Email: ${_emailController.text}');
                                print('Password: ${_passwordController.text}');
                              }
                            },
                            child: GestureDetector(
                              onTap: () {
                                // Handle the button click
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProvidergetStarted(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 70.0),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4, left: 69),
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
        ),
      ),
    );
  }
  


//  void _signUp() async {
  
//     String email = _emailController.text;
//     String password = _passwordController.text;

//     User? user = await _auth.signInWithEmailAndPassword(email,password);

    
//     if (user != null) {
//       print("User is successfully created");
//       Navigator.push(context as BuildContext,
//       MaterialPageRoute
//       (builder: (context)=> MyDashboard() ));
//     } else {
//       print( "Some error happend");
//     }
//   }



}
