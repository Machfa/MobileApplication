import 'package:flutter/material.dart';
import 'package:machfa_app/screans/Search_Page.dart';
import 'package:machfa_app/screans/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machfa_app/screans/sign_up_screen.dart';

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
    onPressed: () {},
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
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SearchScreen(),
        ),
      );
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
