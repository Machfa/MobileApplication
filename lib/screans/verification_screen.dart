import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:machfa_app/global_variabes.dart';
import 'package:machfa_app/screans/background.dart';
import 'package:dio/dio.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController _first = TextEditingController();
  TextEditingController _second = TextEditingController();
  TextEditingController _third = TextEditingController();
  TextEditingController _fourth = TextEditingController();

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
                                  letterSpacing: 1.0,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              )
                            else
                              Text(
                                'To ensure the security of your account, please provide the 4-digit code sent to +213 780 ** ** 00. This code was sent to you via SMS.',
                                style: TextStyle(
                                  letterSpacing: 2.0,
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
                              TextFieldotp(_first, context, true, false),
                              TextFieldotp(_second, context, false, false),
                              TextFieldotp(_third, context, false, false),
                              TextFieldotp(_fourth, context, false, true),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            String otp =
                                _first.text + _second.text + _third.text + _fourth.text;
                            try { 
                              print(otp);
                              var response = await Dio().post(
                                'http://192.168.232.191:4000/otp/verify',
                                data: {'email': email, "otp": otp},
                              );
                              if (response.data['validateOTP'] == true) {
                                print('Verification successful');
                                // Navigate to the next screen or perform any other actions upon successful verification
                              } else {
                                print('Verification failed');
                                // Handle verification failure, e.g., show error message to the user
                              }
                            } catch (error) {
                              print('Error occurred during verification');
                              // Handle other types of errors, e.g., network error
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(screenWidth * 0.9, 64)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Color(0xFF1ABFB5)),
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

class TextFieldotp extends StatelessWidget {
  final TextEditingController controller;
  final BuildContext context;
  final bool first;
  final bool last;

  const TextFieldotp(
      this.controller, this.context, this.first, this.last, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.08,
      width: screenWidth * 0.12,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0.015),
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black12),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xFF1ABFB5)),
            borderRadius: BorderRadius.circular(6),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
