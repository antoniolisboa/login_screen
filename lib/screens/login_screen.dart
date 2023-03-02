import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color primaryColor = const Color(0xFF36F1CD);
  final Color secondColor = const Color(0xFFFBD87F);
  final Color thirdColor = const Color(0xFF32322C);

  bool isThePasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: thirdColor,
                    offset: const Offset(0.5, 0.5),
                    blurRadius: 0.1,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color: thirdColor,
                            fontSize: 36,
                            fontFamily: 'Lobster',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(
                          color: thirdColor,
                          fontFamily: 'Lobster',
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: thirdColor,
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: thirdColor),
                        ),
                      ),
                      cursorColor: thirdColor,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: isThePasswordHidden,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: thirdColor,
                          fontFamily: 'Lobster',
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: thirdColor,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isThePasswordHidden = !isThePasswordHidden;
                            });
                          },
                          icon: Icon(
                            isThePasswordHidden
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: thirdColor,
                            size: 20,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: thirdColor),
                        ),
                      ),
                      cursorColor: thirdColor,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: thirdColor,
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Lobster',
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Sign In'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
