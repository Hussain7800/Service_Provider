import 'package:designfyp/Dashboard/dashboard.dart';
import 'package:designfyp/TextServiceProvider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(splashColor: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}