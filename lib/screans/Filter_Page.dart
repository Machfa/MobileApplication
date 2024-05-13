import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:machfa/screans/verification_screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:flutter_svg/svg.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        appBar: AppBar(
          backgroundColor: Color(0xFFe5e5e5),
          leading: Padding(
            padding: const EdgeInsets.only(left: 4, top: 18, bottom: 12),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Text(
              'Filter',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // actions: [
          //   Expanded(
          //       child: Row(
          //     children: [
          //       Padding(
          //         padding:
          //             const EdgeInsets.only(left: 15, top: 19, bottom: 12),
          //         child: GestureDetector(
          //           onTap: () => Navigator.pop(context),
          //           child: Icon(
          //             Icons.arrow_back,
          //             size: 30,
          //             color: Colors.black,
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 4, top: 12),
          //         child: Text(
          //           'Filter',
          //           style: TextStyle(
          //             fontSize: 30,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ),
          //       // Padding(
          //       //   padding: const EdgeInsets.only(top: 12, left: 190),
          //       //   child: ElevatedButton(
          //       //     onPressed: () {},
          //       //     style: ButtonStyle(
          //       //       shape:
          //       //           MaterialStateProperty.all<RoundedRectangleBorder>(
          //       //         RoundedRectangleBorder(
          //       //           borderRadius: BorderRadius.circular(10.0),
          //       //         ),
          //       //       ),
          //       //       fixedSize: MaterialStateProperty.all<Size>(
          //       //           Size(screenWidth * 0.25, 5)),
          //       //       side: MaterialStateProperty.all<BorderSide>(
          //       //         BorderSide(color: Colors.red, width: 2),
          //       //       ),
          //       //     ),
          //       //     child: Text(
          //       //       'Reset All',
          //       //       style: TextStyle(
          //       //         fontSize: 12,
          //       //         color: Color(0xFF1ABFB5),
          //       //       ),
          //       //     ),
          //       //   ),
          //       // )
          //       Padding(
          //         padding: const EdgeInsets.only(top: 20, left: 180),
          //         child: GestureDetector(
          //           onTap: () {
          //             // Add your onTap logic here
          //           },
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(5),
          //               border: Border.all(color: Colors.red, width: 1.5),
          //             ),
          //             padding:
          //                 EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          //             child: Text(
          //               'Reset All',
          //               style: TextStyle(
          //                 fontSize: 13,
          //                 color: Color(0xFF1ABFB5),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   )),
          // ],
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 22, right: 14),
              child: GestureDetector(
                onTap: () {
                  // Add your onTap logic here
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.red, width: 1.5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: Text(
                    'Reset All',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF1ABFB5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: screenWidth * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Text(
                'Gender',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Expanded(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Container(),
                    Stack(
                      children: [
                        Container(
                          height: 0.17 * screenHeight,
                          width: 0.17 * screenHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        Positioned(
                          top: 0.03 * screenHeight,
                          left: 0.03 * screenHeight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              //   margin: EdgeInsets.all(4),
                              height: 0.11 * screenHeight,
                              width: 0.11 * screenHeight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                  image: AssetImage('assets/man_doctor 1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.13,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 0.17 * screenHeight,
                          width: 0.17 * screenHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        Positioned(
                          top: 0.03 * screenHeight,
                          left: 0.03 * screenHeight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              //   margin: EdgeInsets.all(4),
                              height: 0.11 * screenHeight,
                              width: 0.11 * screenHeight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/female_doctor 1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Text(
                'Set According to',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Container(
                    height: 0.11 * screenHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 14, right: 25, left: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Distance',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.directions_run,
                                  size: 0.45 * (0.11 * screenHeight),
                                ),
                              ),
                              // You can replace the Text widget with your actual distance data.,
                            ],
                          ),
                          SizedBox(width: 20),
                          VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          SizedBox(width: 27),
                          Column(
                            children: <Widget>[
                              Text(
                                'Rating',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 0.45 * (0.11 * screenHeight),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.03 * screenHeight,
            ),
            Container(
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 27),
                          child: Text(
                            'Online Consultation',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Transform.scale(
                          scale:
                              0.8, // Adjust the scale factor as needed the dimentions for swich
                          child: Switch(
                            activeColor: Color(0xFF1ABFB5),
                            activeTrackColor: Color(0xFFD9D9D9),
                            value: _isSelected,
                            onChanged: (newValue) {
                              setState(() {
                                _isSelected = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
