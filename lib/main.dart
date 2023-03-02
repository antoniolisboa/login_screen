import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login screen',
      home: LoginScreen(),
    );
  }
}
