import 'package:flutter/material.dart';
import 'package:machfa_app/global_variabes.dart';
import 'package:machfa_app/screans/background.dart';
import 'package:machfa_app/screans/login_screen.dart';
import 'package:machfa_app/screans/verification_screen.dart';
import 'package:dio/dio.dart';
import './verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password1 = TextEditingController();
  TextEditingController _password2 = TextEditingController();
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
                              height: screenHeight * 0.12,
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
                        height: screenHeight * 0.05,
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
                              controller: _firstName,
                              decoration: InputDecoration(
                                hintText:
                                    "Enter your first name", //you can use "labletext"
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
                              controller: _lastName,
                              decoration: InputDecoration(
                                hintText:
                                    "Enter your last name", //you can use "labletext"
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
                              controller: _phoneNumber,
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
                              controller: _email,
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
                              controller: _password1,
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
                              controller: _password2,
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
                        height: screenHeight * 0.05,
                      ),
                      //////////////////////////////////////////////////////////
                      ElevatedButton(
                        onPressed: () async {
                          firstName = _firstName.text;
                          lastName = _lastName.text;
                          email = _email.text;
                          String password1 = _password1.text;
                          String password2 = _password1.text;
                          phoneNumber = _phoneNumber.text;
                          try {
                            //you need to verify if password1==password2 and do the rest
                            var response = await Dio().post(
                                'http://192.168.232.191:4000/user/register',
                                data: {
                                  'firstName': firstName,
                                  'lastName': lastName,
                                  'email': email,
                                  'role': 'USER',
                                  'password': password1,
                                  'phoneNumber': phoneNumber
                                });
                            var response1 = await Dio().post(
                                'http://192.168.232.191:4000/otp',
                                data: {'email': email});
                            print('otp sent');
                            print(response.statusCode);
                            print(response1.statusCode);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerificationScreen()),
                            );
                            //success go to the next page
                          } catch (err) {
                            print('error 1');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Login failed. Please check your credentials.'),
                              ),
                            );
                            //error thrown
                          }
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
                            onPressed: () async {
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
