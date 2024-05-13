import 'package:flutter/material.dart';
import 'package:machfa/global_variabes.dart';
import 'package:machfa/screans/ForgetPassword_screen.dart';
import 'package:machfa/screans/Search_Page.dart';
import 'package:machfa/screans/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machfa/screans/sign_up_screen.dart';
import 'package:dio/dio.dart';

class loginScrean extends StatefulWidget {
  const loginScrean({super.key});

  @override
  State<loginScrean> createState() => _loginScreanState();
}

class _loginScreanState extends State<loginScrean> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        body: OrientationBuilder(builder: (context, orientation) {
          double screenHeight = MediaQuery.of(context).size.height;
          //  double screenWidth = MediaQuery.of(context).size.width;

          return Stack(
            children: [
              orientation == Orientation.portrait ? background() : Container(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.2,
                      ),
                      Headertext(context),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      LoginImage(context),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      inputField(context),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      forgetpassword(context),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      loginbutton(context),
                      signup(context),
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

Headertext(context) {
  return const Column(
    children: [
      const Text(
        'Welcome Back on board !',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

LoginImage(context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return Container(
    height: screenHeight * 0.23,
    width: screenWidth * 0.48,
    child: SvgPicture.asset("assets/login.svg"),
  );
}

TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();
inputField(context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Column(
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
          controller: _email,
          decoration: InputDecoration(
            hintText: "Email or Phone number", //you can use "labletext"
            contentPadding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
            ),
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: BorderSide.none, //aftter cliq "focuseborder"
            ),
            // // enabledBorder: OutlineInputBorder(
            // //   borderSide: BorderSide(color: Colors.black),
            // //   borderRadius: BorderRadius.circular(100),//befor cliq
            // ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
      SizedBox(
        height: 20,
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
          controller: _password,
          decoration: InputDecoration(
            hintText: "Enter password",
            contentPadding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
            ),
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
    ],
  );
}

forgetpassword(context) {
  return TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ForgetPassword(),
        ),
      );
    },
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(Color(0xFFe5e5e5)),
      //overlayColor: MaterialStatePropertyAll(Colors.grey),
    ),
    child: const Text(
      'Forget Password ?',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

loginbutton(context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return ElevatedButton(
    onPressed: () async {
      email = _email.text;
      password = _password.text;

      try {
        // Send login request
        var response = await Dio().post(
          'http://192.168.232.191:4000/user/login',
          data: {'email': email, 'password': password},
        );

        print(response.statusCode); // Print response status code for debugging

        if (response.statusCode == 200 || response.statusCode == 201) {
          // Login successful, navigate to next screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchScreen(),
            ),
          );
        } else {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Login failed. Please check your credentials.'),
            ),
          );
        }
      } catch (err) {
        // Handle Dio errors
        print('Dio Error: $err');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed. Please check your credentials.'),
          ),
        );
      }
    },
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(Size(screenWidth * 0.9, 64)),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1ABFB5)),
    ),
    child: Text(
      'Log In',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}

signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Dont have an account ?',
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpScreen()),
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
    ],
  );
}
