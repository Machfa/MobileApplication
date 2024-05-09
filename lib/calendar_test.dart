import 'package:flutter/material.dart';
import 'package:machfa/AppointmentProcess/available_appointment_calendar.dart';
import 'package:machfa/homePage/home_page.dart';
import 'package:machfa/myAppointmentList/my_appointment.dart';
import 'package:machfa/myAppointmentList/my_appointment_details.dart';
import 'package:machfa/paymentMethod/payment_method_page.dart';
import 'package:machfa/personalInformation/personal_information.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(
      //   backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      // ),
      home: AvailableAppointmentCalendar(),

      debugShowCheckedModeBanner: false,
    );
  }
}
