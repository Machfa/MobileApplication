<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:machfa/botomNavBar/nav_bar.dart';
import 'package:machfa/doctorProfile/location/location.dart';
import 'package:machfa/doctorProfile/aboutDoctor/about_doctor.dart';
import 'package:machfa/doctorProfile/header/doctor_general_information.dart';
import 'package:machfa/doctorProfile/experienceAndDistanceRow/experience_and_distance_row.dart';
import 'package:machfa/doctorProfile/thisWeekSchedule/this_week_schedule.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      appBar: AppBar(
        title: const Text('Test'),
      ), //TODO: Delete Test Title
      bottomNavigationBar: const NavBar(),
      body: ListView(
        children: [
          DoctorGeneralInformation(),
          ExperienceAndDistanceRow(),
          ThisWeekSchedule(),
          const AboutDoctorSection(),
          const Location(),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:machfa/botomNavBar/nav_bar.dart';
import 'package:machfa/doctorProfile/location/location.dart';
import 'package:machfa/doctorProfile/aboutDoctor/about_doctor.dart';
import 'package:machfa/doctorProfile/header/doctor_general_information.dart';
import 'package:machfa/doctorProfile/experienceAndDistanceRow/experience_and_distance_row.dart';
import 'package:machfa/doctorProfile/thisWeekSchedule/this_week_schedule.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      appBar: AppBar(
        title: const Text('Test'),
      ), //TODO: Delete Test Title
      bottomNavigationBar: const NavBar(),
      body: ListView(
        children: [
          DoctorGeneralInformation(),
          ExperienceAndDistanceRow(),
          ThisWeekSchedule(),
          const AboutDoctorSection(),
          const Location(),
        ],
      ),
    );
  }
}
>>>>>>> anissKettroussi
