// import 'dart:js';

// import 'package:designfyp/Dashboard/dashboard.dart';
// import 'package:designfyp/Notification/firebase_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:designfyp/RegisterationProcess/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(UserSignUp());
}

class UserSignUp extends StatelessWidget {
  // final FirebaseAuthService _auth = FirebaseAuthService();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  @override
  // void dispose() {
  //   _emailController.dispose();
  //   _usernameController.dispose();
  //   _passwordController.dispose();
  //   _confirmPasswordController.dispose();
    
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
                  'assets/signup.PNG',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, right: 8),
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
                          } else if (!RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, right: 8),
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Color(0xFF6BC3FE)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'assets/profile.png',
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
                            return 'Please enter your username.';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, right: 8),
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
                    SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, right: 8),
                      child: TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
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
                            return 'Please confirm your password.';
                          } else if (value != _passwordController.text) {
                            return 'Passwords do not match.';
                          }
                          return null;
                        },
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
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Validation passed, handle signup logic here
                                // For example, you can call a signup API or navigate to the next screen.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserSignIn()),
                                );
                              }
                            },
                            child: GestureDetector(
                              // onTap: () {
                              //   // _signUp();
                              // },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 120.0),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4, left: 99),
                                  child: Text(
                                    'Sign up',
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

  // void _signUp() async {
  //   String email = _emailController.text;
  //   String username = _usernameController.text;
  //   String password = _passwordController.text;

  //   User? user =
  //       await _auth.signUpWithEmailAndPassword(email, username, password);

  //   if (user != null) {
  //     print("User is successfully created");
  //     Navigator.push(context as BuildContext,
  //         MaterialPageRoute(builder: (context) => UserSignIn()));
  //   } else {
  //     print("Some error happend");
  //   }
  // }
}
