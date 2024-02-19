import 'package:flutter/material.dart';
import 'package:machfa_app/screans/background.dart';

// ignore: camel_case_types
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        body: OrientationBuilder(builder: (context, orientation) {
          double screenHeight = MediaQuery.of(context).size.height;
          //double screenWidth = MediaQuery.of(context).size.width;

          return Stack(
            children: [
              if (orientation == Orientation.portrait) background(),
              Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 55, horizontal: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Icon(
                                    Icons.arrow_back,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Back',
                                  style: TextStyle(
                                    fontSize: 22.2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenHeight * 0.14,
                            ),
                            const Text(
                              'Account Verification',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            if (orientation != Orientation.portrait)
                              Text(
                                'To ensure the security of your account, please provide the 4-digit code sent to +213 780 ** ** 00. This code was sent to you via SMS.',
                                style: TextStyle(
                                  letterSpacing:
                                      1.0, // Adjust the letter spacing here
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              )
                            else
                              Text(
                                'To ensure the security of your account, please provide the 4-digit code sent to +213 780 ** ** 00. This code was sent to you via SMS.',
                                style: TextStyle(
                                  letterSpacing:
                                      2.0, // Adjust the letter spacing here
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              )
                          ],
                        ),
                      ],
                    ),
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
