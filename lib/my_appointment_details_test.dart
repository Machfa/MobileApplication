import 'package:flutter/material.dart';
import 'package:machfa/myAppointmentList/MyAppointementDetails/appointment_status.dart';
import 'package:machfa/myAppointmentList/my_appointment_details.dart';

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
      home: MyAppointmentDetails(
        appointment: DateTime(2023, 9, 5, 23, 36),
        appointmentStatus: AppointmentStatus.cancled(),
        resheduleButton:
            AppointmentStatus.cancled().rescheduleActionAvaibility!,
        cancelButton: AppointmentStatus.cancled().cancelActionAvaibility!,
        requestRefundButton:
            AppointmentStatus.cancled().requestRefundActionAvaibility!,
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
