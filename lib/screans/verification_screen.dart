import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:machfa_app/screans/background.dart';

// ignore: camel_case_types
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool? first, last;

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
                        SizedBox(
                          height: screenHeight * 0.04,
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
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Container(
                          height: screenHeight * 0.23,
                          width: screenWidth * 0.48,
                          child:
                              SvgPicture.asset("assets/verificationImage.svg"),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFieldotp(context, first = true, last = false),
                              TextFieldotp(
                                  context, first = false, last = false),
                              TextFieldotp(context, false, last = false),
                              TextFieldotp(context, first = false, last = true),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        ElevatedButton(
                          onPressed: () {},
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
                            'Verify',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '(03:00) Resend Code ? ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Click here',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF047C74),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.063,
                left: screenHeight * 0.02,
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
            ],
          );
        }),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
TextFieldotp(
  context,
  bool first,
  last,
) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return Container(
    height: screenHeight * 0.08,
    width: screenWidth * 0.12,
    child: TextField(
      textAlign: TextAlign.center,
      autofocus:
          true, //Automatically focuses the first TextField when the screen loads.
      onChanged: (value) {
        // Triggers a callback whenever the text in the TextField changes. It's used to handle navigation between text fields based on the length of the input.
        if (value.length == 1 && last == false) {
          FocusScope.of(context).nextFocus();
        }
        if (value.length == 0 && first == false) {
          FocusScope.of(context).previousFocus();
        }
      },
      showCursor: false, //Hides the cursor in the TextField.
      readOnly: false, //Allows the user to edit the text.
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0.015),
          counter:
              Offstage(), //Hides the character count display.يخفي عرض عداد الأحرف.
          enabledBorder: OutlineInputBorder(
              // Defines the border when the TextField is not focused.
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(6)),
          focusedBorder: OutlineInputBorder(
              // Defines the border when the TextField is in focus. It has a purple color and a width of 2 pixels.
              borderSide: BorderSide(width: 2, color: Color(0xFF1ABFB5)),
              borderRadius: BorderRadius.circular(6)),
          fillColor: Colors.white, // Change the color as needed
          filled: true),
    ),
  );
}
