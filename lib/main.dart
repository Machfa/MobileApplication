<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:machfa/AppointmentProcess/available_appointment_calendar.dart';
import 'package:machfa/homePage/home_page.dart';
import 'package:machfa/myAppointmentList/MyAppointementDetails/appointment_status.dart';
import 'package:machfa/myAppointmentList/my_appointment_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppointmentStatus appointmentStatus = AppointmentStatus.cancled();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(
      //   backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      // ),
      home: MyAppointmentDetails(
        appointment: DateTime(2024, 5, 14, 12, 15),
        appointmentStatus: appointmentStatus,
        cancelButton: appointmentStatus.cancelActionAvaibility!,
        requestRefundButton: appointmentStatus.requestRefundActionAvaibility!,
        resheduleButton: appointmentStatus.rescheduleActionAvaibility!,
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
=======
// import 'package:flutter/material.dart';
// import 'package:machfa/screans/Filter_Page.dart';
// import 'package:machfa/screans/Slash_screen.dart';
// import 'package:machfa/screans/login_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Machfa',
//         theme: ThemeData(
//           useMaterial3: true,
//         ),
//         home: const FilterPage());
//   }
// }
>>>>>>> anissKettroussi
