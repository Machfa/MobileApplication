import 'package:flutter/material.dart';
import 'package:machfa_app/screans/background.dart';
import 'package:machfa_app/screans/login_screen.dart';
import 'package:machfa_app/screans/verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        body: OrientationBuilder(builder: (context, orientation) {
          double screenHeight = MediaQuery.of(context).size.height;
          double screenWidth = MediaQuery.of(context).size.width;
          return Stack(
            children: [
              orientation == Orientation.portrait ? background() : Container(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.14,
                            ),
                            const Text(
                              'Welcome on board ',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            const Text(
                              'Let’s help you to find your doctor',
                              style: TextStyle(
                                letterSpacing:
                                    2.0, // Adjust the letter spacing here
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.08,
                      ),
                      //////////////////////////////////////////////////////////
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: -10,
                                  offset: Offset(0, 15),
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText:
                                    "Enter your full name", //you can use "labletext"
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  borderSide: BorderSide
                                      .none, //aftter cliq "focuseborder"
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: -10,
                                  offset: Offset(0, 15),
                                ),
                              ],
                            ),
                            child: TextField(
                              maxLength: 10,
                              buildCounter: (BuildContext context,
                                      {required int currentLength,
                                      required bool isFocused,
                                      required int? maxLength}) =>
                                  null,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText:
                                    "Enter your phone number", //you can use "labletext"
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  borderSide: BorderSide
                                      .none, //aftter cliq "focuseborder"
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: -10,
                                  offset: Offset(0, 15),
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText:
                                    "Enter your email", //you can use "labletext"
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  borderSide: BorderSide
                                      .none, //aftter cliq "focuseborder"
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: -10,
                                  offset: Offset(0, 15),
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText:
                                    "Enter password", //you can use "labletext"
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  borderSide: BorderSide
                                      .none, //aftter cliq "focuseborder"
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: -10,
                                  offset: Offset(0, 15),
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText:
                                    "Confirme password", //you can use "labletext"
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  borderSide: BorderSide
                                      .none, //aftter cliq "focuseborder"
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                      ),
                      //////////////////////////////////////////////////////////
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerificationScreen()),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(screenWidth * 0.9, 64)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF1ABFB5)),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //////////////////////////////////////////////////////
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ? ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginScrean()),
                              );
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF047C74),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.04,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
