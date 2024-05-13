import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/doctorProfile/header/doctor_general_information.dart';

class MyAppointmentDetails extends StatefulWidget {
  const MyAppointmentDetails({super.key});

  @override
  State<MyAppointmentDetails> createState() => _MyAppointmentDetailsState();
}

class _MyAppointmentDetailsState extends State<MyAppointmentDetails> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    print(screenHeight);
    print(screenWidth);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Appointment",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5E5E5),
      body: ListView(
        children: [
          DoctorGeneralInformation(),
          Padding(
            padding: EdgeInsets.only(
              right: (19 / 411.42857) * screenWidth,
              left: (19 / 411.42857) * screenWidth,
              top: (15 / 890.2857) * screenHeight,
            ),
            child: Text(
              "Date of your appointment",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: (19 / 411.42857) * screenWidth,
              right: (19 / 411.42857) * screenWidth,
              top: (13 / 890.2857) * screenHeight,
              bottom: (25 / 890.2857) * screenHeight,
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Wednesday 4th December 2024",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF1ABFB5),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (19 / 411.42857) * screenWidth,
            ),
            child: Row(
              children: [
                Text(
                  "Time:",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "16:00",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF1ABFB5)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (25 / 890.2857) * screenHeight,
              bottom: (20 / 890.2857) * screenHeight,
              left: (19 / 411.42857) * screenWidth,
              right: (19 / 411.42857) * screenWidth,
            ),
            child: Text(
              "Status:",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF1C1F1E),
                ),
              ),
            ),
          ),
          StatusBox(
            status:
                AppointmentStatus.notConfirmed(DateTime(2024, 2, 1, 2, 2, 30)),
          ),
        ],
      ),
    );
  }
}

class AppointmentStatus {
  String? label;
  DateTime? deadline;
  Color? color;
  bool? cancelActionAvaibility;
  bool? requestRefundActionAvaibility;
  bool? rescheduleActionAvaibility;
  AppointmentStatus.notConfirmed(DateTime deadline) {
    label = "NOT Confirmed";
    color = const Color(0xFFF68C1F);
    deadline = deadline;
    cancelActionAvaibility = true;
    requestRefundActionAvaibility = false;
    rescheduleActionAvaibility = false;
  }
}

class StatusBox extends StatelessWidget {
  final AppointmentStatus status;
  const StatusBox({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Confirmed",
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xFF1C1F1E),
          ),
        ),
      ),
    );
  }
}
