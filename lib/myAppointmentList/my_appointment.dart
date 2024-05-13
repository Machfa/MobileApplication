import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class MyAppointment extends StatelessWidget {
  final Color backgroundColor = const Color(0xFFE5E5E5);
  final bool bellNotification = true;
  final bool personNotification = true;
  // There is three state of appointment
  // "Confirmed" - "NOT Confirmed" - "Cancelled"
  final List<List<String>> doctors = [
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "Confirmed",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "Confirmed",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "Cancelled",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "Confirmed",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "Confirmed",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "NOT Confirmed",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "Confirmed",
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
  ];
  MyAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leadingWidth: screenWidth * (300 / 428),
        backgroundColor: backgroundColor,
        leading: Padding(
          padding: EdgeInsets.only(
            top: (26.4 / 926) * screenHeight,
            left: (24 / 428) * screenWidth,
          ),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'History',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 23.0,
                      wordSpacing: -2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          SizedBox(
            height: screenHeight * (25 / 926),
            child: IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(
                bellNotification
                    ? Icons.notifications
                    : Icons.notifications_on_sharp,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 9.0),
            child: SizedBox(
              height: screenHeight * (25 / 926),
              child: IconButton(
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  personNotification == true ? Icons.person : Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: (24 / 428) * screenWidth,
            ),
            child: Text(
              'Consult My Previous Medical Visit',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: (24 / 428) * screenWidth,
                  ),
                  child: Container(
                    height: (150 / 428) * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: doctors[index][2] == "Confirmed"
                            ? Color(0xFF1ABFB5)
                            : doctors[index][2] == "NOT Confirmed"
                                ? Color(0xFFF68C1F)
                                : Color(0xFFFF0000),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height:
                                (100 / 428) * MediaQuery.of(context).size.width,
                            width:
                                (100 / 428) * MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              radius: ((100 / 428) *
                                      MediaQuery.of(context).size.width) /
                                  2,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(doctors[index][1]),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              doctors[index][0],
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: (18 / 926) *
                                      MediaQuery.of(context).size.height,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7.0,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'lib/icons/availableDoctors/star.png',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  doctors[index][3],
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: (17 / 926) *
                                          MediaQuery.of(context).size.height,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Image.asset(
                                    'lib/icons/availableDoctors/dot.png'),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  doctors[index][4],
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: (17 / 926) *
                                          MediaQuery.of(context).size.height,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Image.asset('lib/icons/history/time-sand.png'),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  doctors[index][5],
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: (17 / 926) *
                                          MediaQuery.of(context).size.height,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: (157 / 392.72) * screenWidth,
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                      shadowColor:
                                          const MaterialStatePropertyAll(
                                        Colors.transparent,
                                      ),
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      side: MaterialStateProperty.all(
                                          BorderSide.none),
                                    ),
                                    onPressed: () {
                                      // TODO: PUSH THE HISTORY MEDICAL WITH SPECIFIC DOCTOR
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        border: Border.all(
                                          color:
                                              doctors[index][2] == "Confirmed"
                                                  ? Color(0xFF1ABFB5)
                                                  : doctors[index][2] ==
                                                          "NOT Confirmed"
                                                      ? Color(0xFFF68C1F)
                                                      : Color(0xFFFF0000),
                                        ),
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2.0,
                                          horizontal: 7,
                                        ),
                                        child: Text(
                                          'Details',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: doctors[index][2] ==
                                                      "Confirmed"
                                                  ? Color(0xFF1ABFB5)
                                                  : doctors[index][2] ==
                                                          "NOT Confirmed"
                                                      ? Color(0xFFF68C1F)
                                                      : Color(0xFFFF0000),
                                              fontSize: (15 / 926) *
                                                  MediaQuery.of(context)
                                                      .size
                                                      .height,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: doctors.length,
            ),
          )
        ],
      ),
    );
  }
}
