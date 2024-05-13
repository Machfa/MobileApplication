import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machfa/screans/background.dart';
import 'package:machfa/screans/sign_up_screen.dart';
import 'package:machfa/screans/verification_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xFFe5e5e5),
        body: Stack(
          children: [
            background(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.27,
                          ),
                          const Text(
                            'Forget Password',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Recover Your Account',
                            style: TextStyle(
                              letterSpacing:
                                  2.0, // Adjust the letter spacing here
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.11,
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
                              //  controller: _firstName,
                              decoration: InputDecoration(
                                hintText:
                                    "Email or Phone Number", //you can use "labletext"
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
                            height: screenHeight * 0.05,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerificationScreen()),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                              'Send Request',
                              style: TextStyle(
                                  letterSpacing: 3,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create a new Account ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()),
                                  );
                                },
                                child: Text(
                                  'Sign up',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
