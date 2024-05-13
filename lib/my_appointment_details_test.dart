import 'package:flutter/material.dart';
import 'package:machfa/principalPage/prescription_history.dart';

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
      home: PrescriptionHistory(),

      debugShowCheckedModeBanner: false,
    );
  }
}
