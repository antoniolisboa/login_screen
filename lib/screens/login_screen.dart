import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Color primaryColor = const Color(0xFF36F1CD);
  Color secondColor = const Color(0xFFFBD87F);
  Color textFieldColor = const Color(0xFF32322C);

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                primaryColor,
                secondColor,
              ],
            ),
          ),
        )
      ],
    );
  }
}
