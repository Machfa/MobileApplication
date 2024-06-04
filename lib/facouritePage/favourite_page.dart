<<<<<<< HEAD
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class FavouritePage extends StatelessWidget {
  final Color backgroundColor = const Color(0xFFE5E5E5);
  final bool bellNotification = true;
  final bool personNotification = true;
  final List<List<String>> doctors = [
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
  ];
  FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    print(screenHeight);
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
                  'Favourite Doctor',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: (21.0 / 890.2857) * screenHeight,
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
              'List of your Favourite Doctor Specialist',
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
                        color: const Color.fromRGBO(169, 169, 169, 1),
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
                            child: CircleAvatarWithStatus(
                              statusColor: doctors[index][2] == true.toString()
                                  ? const Color(0xFF008000)
                                  : Colors.transparent,
                              size: (100 / 428) *
                                  MediaQuery.of(context).size.width,
                              imageUrl: doctors[index][1],
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
                                    'lib/icons/availableDoctors/star.png'),
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
                                Image.asset(
                                    'lib/icons/availableDoctors/running.png'),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    doctors[index][6],
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: const Color.fromRGBO(
                                            255, 0, 0, 0.87),
                                        fontWeight: FontWeight.bold,
                                        fontSize: (18 / 926) *
                                            MediaQuery.of(context).size.height,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 65,
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
                                      // TODO: PUSH THE PROFILE OF THE DOCTOR
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        border: Border.all(
                                          color: const Color(0xFFA9A9A9),
                                        ),
                                        color: const Color(0xFF1ABFB5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                          horizontal: 9,
                                        ),
                                        child: Text(
                                          'Book',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: const Color(0xFFF2F2F2),
                                              fontSize: (13 / 926) *
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

class CircleAvatarWithStatus extends StatelessWidget {
  final String imageUrl;
  final Color statusColor;
  final double size;

  const CircleAvatarWithStatus({
    super.key,
    required this.imageUrl,
    required this.statusColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: size / 2,
          backgroundColor: Colors.white,
          backgroundImage:
              NetworkImage(imageUrl), // Load network image using NetworkImage
        ),
        Container(
          width: size / 4.5,
          height: size / 4.5,
          decoration: BoxDecoration(
            color: statusColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
=======
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HistoryPage extends StatelessWidget {
  final Color backgroundColor = const Color(0xFFE5E5E5);
  final bool bellNotification = true;
  final bool personNotification = true;
  final List<List<String>> doctors = [
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
    [
      'Dr. SEBA Mohammed',
      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      true.toString(),
      '4.7',
      'Cardiologist',
      '5 min',
      '2000.00 DA',
    ],
  ];
  HistoryPage({super.key});

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
                  'Favourite Doctor',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
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
              'List of your Favourite Doctor Specialist',
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
                        color: const Color.fromRGBO(169, 169, 169, 1),
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
                            child: CircleAvatarWithStatus(
                              statusColor: doctors[index][2] == true.toString()
                                  ? const Color(0xFF008000)
                                  : Colors.transparent,
                              size: (100 / 428) *
                                  MediaQuery.of(context).size.width,
                              imageUrl: doctors[index][1],
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
                                    'lib/icons/availableDoctors/star.png'),
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
                                Image.asset(
                                    'lib/icons/availableDoctors/running.png'),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    doctors[index][6],
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: const Color.fromRGBO(
                                            255, 0, 0, 0.87),
                                        fontWeight: FontWeight.bold,
                                        fontSize: (18 / 926) *
                                            MediaQuery.of(context).size.height,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 65,
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
                                      // TODO: PUSH THE PROFILE OF THE DOCTOR
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        border: Border.all(
                                          color: const Color(0xFFA9A9A9),
                                        ),
                                        color: const Color(0xFF1ABFB5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                          horizontal: 9,
                                        ),
                                        child: Text(
                                          'Book',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: const Color(0xFFF2F2F2),
                                              fontSize: (13 / 926) *
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

class CircleAvatarWithStatus extends StatelessWidget {
  final String imageUrl;
  final Color statusColor;
  final double size;

  const CircleAvatarWithStatus({
    super.key,
    required this.imageUrl,
    required this.statusColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: size / 2,
          backgroundColor: Colors.white,
          backgroundImage:
              NetworkImage(imageUrl), // Load network image using NetworkImage
        ),
        Container(
          width: size / 4.5,
          height: size / 4.5,
          decoration: BoxDecoration(
            color: statusColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
>>>>>>> anissKettroussi
