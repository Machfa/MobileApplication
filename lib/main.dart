import 'package:flutter/material.dart';
import 'package:machfa/historyPage/history_page.dart';
import 'package:machfa/homePage/home_page.dart';

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
      home: HistoryPage(),

      debugShowCheckedModeBanner: false,
    );
  }
}
