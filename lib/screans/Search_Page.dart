import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machfa_app/screans/doctor_card/data_doctors.dart';
import 'package:machfa_app/screans/doctor_card/doctor_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key});

  @override
  State<SearchScreen> createState() => _Search_screenState();
}

class _Search_screenState extends State<SearchScreen> {
  final List<Doctors> _results = [];

  void _handleSearch(String input) {
    _results.clear();
    for (var str in doctor) {
      if (str.name.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _results.add(str);
        });
      }
    }
  }

  late double screenHeight;
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFe5e5e5),
          automaticallyImplyLeading: false, // Remove the back icon
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_2,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  'Find Favorite Doctor Specialist',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: TextField(
                        onChanged: (value) => _handleSearch(value),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: 0.03 * screenHeight,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(200),
                            borderSide:
                                BorderSide.none, //aftter cliq "focuseborder"
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    //the icon
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color(0xFF1ABFB5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.tune,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            Expanded(
                child: _results.isEmpty
                    ? ListView.builder(
                        itemCount: doctor.length,
                        itemBuilder: (context, index) => Doctor_card(
                          itemIndex: index,
                          Doctor: doctor[index],
                        ),
                      )
                    : ListView.builder(
                        itemCount: _results.length,
                        itemBuilder: (context, index) => Doctor_card(
                          itemIndex: index,
                          Doctor: _results[index],
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}
