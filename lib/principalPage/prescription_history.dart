import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/doctorProfile/header/doctor_general_information.dart';

import 'document_row.dart';

class PrescriptionHistory extends StatefulWidget {
  final Map<String, List<DocumentRow>> documentType = const {
    "Medical Report": [
      DocumentRow(
        reportIconPath: "lib/icons/prescriptionHistory/medicalReport.png",
        reportText: "Medical Report",
      ),
    ],
    "Tests Report": [
      DocumentRow(
        reportIconPath: "lib/icons/prescriptionHistory/bloodTest.png",
        reportText: "Blood Test",
      ),
      DocumentRow(
        reportIconPath: "lib/icons/prescriptionHistory/ecgReport.png",
        reportText: "ECG Report",
      ),
      DocumentRow(
        reportIconPath: "lib/icons/prescriptionHistory/irmReport.png",
        reportText: "IRM Report",
      ),
    ],
  };
  const PrescriptionHistory({super.key});

  @override
  State<PrescriptionHistory> createState() => _PrescriptionHistoryState();
}

class _PrescriptionHistoryState extends State<PrescriptionHistory> {
  int _currentIndex = 0;
  late PageController _pageController;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        title: const Text("Prescription History"),
      ),
      body: ListView(
        children: [
          DoctorGeneralInformation(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    _currentIndex =
                        (_currentIndex - 1) % widget.documentType.length;
                    _pageController.animateToPage(
                      (_currentPage.toInt() - 1) % widget.documentType.length,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                icon: Text(
                  "<",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              documentTypeTitle(
                  widget.documentType.keys.elementAt(_currentIndex)),
              IconButton(
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    _currentIndex =
                        (_currentIndex + 1) % widget.documentType.length;
                    _pageController.animateToPage(
                      (_currentPage.toInt() + 1) % widget.documentType.length,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                icon: Text(
                  ">",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: double.maxFinite, // Adjust height as needed
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: generateListOfDocument(
                      widget.documentType.values.elementAt(index),
                    ),
                  ),
                );
              },
              itemCount: widget.documentType.length,
            ),
          )
        ],
      ),
    );
  }

  Text documentTypeTitle(String documentTypeString) {
    return Text(
      documentTypeString,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          fontSize: 28,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  List<Container> generateListOfDocument(List<DocumentRow> docucmentRow) {
    return List.generate(
      docucmentRow.length,
      (index) => Container(
        height: 61,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0, left: 15),
          child: docucmentRow[index],
        ),
      ),
    );
  }
}
