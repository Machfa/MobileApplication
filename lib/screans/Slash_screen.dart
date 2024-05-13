import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:machfa/screans/background.dart';
import 'package:machfa/screans/login_screen.dart';

class SlashScreen extends StatelessWidget {
  const SlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            background(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.18,
                    ),
                    Container(
                      height: screenHeight * 0.22,
                      width: screenWidth * 0.43,
                      child: SvgPicture.asset("assets/Image1.svg"),
                    ),
                    SizedBox(
                      height: screenHeight * 0.08,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Machfa is the Best Medical Solution',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet consectetur. Risus viverra amet suspendisse et suspendisse a metus. Sagittis euismod ultricies morbi commodo vel vitae donec. Aliquam curabitur suspendisse cursus mauris. Imperdiet pellentesque dignissim purus enim sagittis duis arcu. Aliquam nec morbi nunc a urna sed metus orci. Eleifend.',
                          style: TextStyle(
                              letterSpacing: 2.0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.08,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginScrean()),
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
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF1ABFB5)),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            letterSpacing: 3,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
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
