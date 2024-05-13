import 'package:flutter/material.dart';
import 'package:machfa/botomNavBar/nav_bar.dart';
import 'package:machfa/homePage/Available%20Doctor/available_doctor.dart';
import 'package:machfa/homePage/Available%20Doctor/available_doctor_list.dart';
import 'package:machfa/homePage/SpecialityCategory/speciality_category_section.dart';
import 'package:machfa/homePage/lastestNewsMenu/lastest_news_menu.dart';

class HomePage extends StatelessWidget {
  final bool personNotification = false;
  final bool bellNotification = false;
  // active bellNotification
  IconButton nonactiveNotificationBell(color, icon, onPressed) => IconButton(
        icon: icon,
        onPressed: onPressed,
        color: color,
      );
  //: Icons.notifications_on_sharp
  final Color backgroundColor;
  final int currentItem;
  final List<List<String>> speciality = [
    ['lib/icons/speciality/Cardiologue.png', 'Cardiologiste', '5'],
    ['lib/icons/speciality/Ophtalmologue.png', 'Ophthalmologist', '256'],
    ['lib/icons/speciality/Nephrologue.png', 'Nephrologist', '25'],
    ['lib/icons/speciality/Genecologue.png', 'Gynecologist', '10'],
    ['lib/icons/speciality/Pneumologue.png', 'Pneumologue', '36'],
    ['lib/icons/speciality/Cardiologue.png', 'Cardiologiste', '5'],
  ];

  HomePage({
    super.key,
    this.backgroundColor = const Color.fromARGB(255, 229, 229, 229),
    this.currentItem = 0,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final List<String> picItemPath = [
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRKWi6TaiI943FA_VlA-34Zkc9AfZibU9TrHsg1Sb2mrFpeIZ8i',
      'https://t3.ftcdn.net/jpg/02/16/47/22/360_F_216472247_cT66WDoS0fp1s3wC7eaykMJNDGVbOBPq.jpg',
      'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg',
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: const NavBar(),
      appBar: AppBar(
        leadingWidth: screenWidth * (193 / 428),
        backgroundColor: backgroundColor,
        leading: Padding(
          padding: EdgeInsets.only(
            left: (24 / 428) * screenWidth,
            top: (32 / 926) * screenHeight,
          ),
          child: SizedBox(
            child: Image.asset(
              'lib/homePage/logoFrame.png',
              width: 500,
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
      body: ListView(
        children: [
          SizedBox(
            height: (38 / 926) * screenHeight,
          ),
          LastestNewsMenu(
            picItemPath: picItemPath,
            currentItem: currentItem + 1,
          ),
          SpecialityCategorySection(
            speciality: speciality,
          ),
          const AvailableDoctor(),
          AvailableDoctorsList(),
        ],
      ),
    );
  }
}
