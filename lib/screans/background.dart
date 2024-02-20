import 'package:flutter/material.dart';

class background extends StatelessWidget {
  const background({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        
        Container(
          color: Color(0xFFe5e5e5),
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(
          // top: -100,
          // left: -100,
          top: -screenHeight * 0.12, // Adjust top position dynamically
          left: -screenWidth * 0.25, // Adjust left position dynamically
          child: Container(
            // height: 250,//static
            // width: 313,
            height: screenHeight * 0.3, // Adjust height dynamically
            width: screenWidth * 0.74, // Adjust width dynamically
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1ABFB5).withOpacity(0.25),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromARGB(255, 163, 234, 229),
                        ),
                      ),
                      height: screenWidth * 0.47, // Adjust height dynamically
                      width: screenWidth * 0.47, // Adjust width dynamically
                      // height: 200,
                      // width: 200,
                      // color: Colors.red,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1ABFB5).withOpacity(0.25),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromARGB(255, 163, 234, 229),
                        ),
                      ),
                      // height: 200,
                      // width: 200,
                      height: screenWidth * 0.47, // Adjust height dynamically
                      width: screenWidth * 0.47, // Adjust width dynamically
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
