import 'package:flutter/material.dart';
import 'package:machfa_app/screans/Filter_Page.dart';
import 'package:machfa_app/screans/Slash_screen.dart';
import 'package:machfa_app/screans/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Machfa',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const FilterPage());
  }
}
