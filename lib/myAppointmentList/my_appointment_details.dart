<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/doctorProfile/header/doctor_general_information.dart';

import 'MyAppointementDetails/action_box.dart';
import 'MyAppointementDetails/appointment_status.dart';
import 'MyAppointementDetails/status_box.dart';

//TODO: Adjust the size of widgets with the screen dimensions

class MyAppointmentDetails extends StatefulWidget {
  final bool cancelButton;
  final bool resheduleButton;
  final bool requestRefundButton;
  final DateTime appointment;
  final AppointmentStatus appointmentStatus;
  const MyAppointmentDetails({
    super.key,
    required this.cancelButton,
    required this.resheduleButton,
    required this.requestRefundButton,
    required this.appointment,
    required this.appointmentStatus,
  });

  @override
  State<MyAppointmentDetails> createState() => _MyAppointmentDetailsState();
}

class _MyAppointmentDetailsState extends State<MyAppointmentDetails> {
  @override
  Widget build(BuildContext context) {
    final bool actionEnabled = widget.cancelButton |
        widget.requestRefundButton |
        widget.resheduleButton;
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
                _formatDate(widget.appointment),
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
                      "${widget.appointment.hour}:${widget.appointment.minute}",
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
            status: widget.appointmentStatus,
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          widget.appointmentStatus.deadline != null
              ? Padding(
                  padding: EdgeInsets.only(
                    top: (25 / 890.2857) * screenHeight,
                    bottom: (20 / 890.2857) * screenHeight,
                    left: (19 / 411.42857) * screenWidth,
                    right: (19 / 411.42857) * screenWidth,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Deadline:",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFF68C1F),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.5,
                            vertical: 4,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sunday 1st December 2024",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                "Before 04:00 am",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox(),
          SizedBox(
            height:
                widget.appointmentStatus.color == Color(0xFF1ABFB5) ? 12 : 0,
          ),
          //TODO: Make a boolean to precise if there is neacessity to display the following action
          actionEnabled
              ? _enableActionSection(screenHeight, screenWidth)
              : SizedBox(),
          _actionBox(
            widget.resheduleButton,
            screenWidth,
            Colors.transparent,
            "RESCHEDULE",
            Color(0xFF1ABFB5),
            8,
            Border.all(color: Color(0xFF1ABFB5)),
            () {
              //TODO: Implemente the logic of Cancel
            },
          ),
          _actionBox(
            widget.requestRefundButton,
            screenWidth,
            Colors.transparent,
            "REQUEST REFUND",
            Color(0xFFFF00000),
            0,
            Border.all(
              color: Color(0xFFFF0000),
            ),
            () {
              //TODO: Implemente the logic of Cancel
            },
          ),
          _actionBox(
            widget.cancelButton,
            screenWidth,
            Colors.transparent,
            "CANCEL",
            Color(0xFFFF00000),
            8,
            Border.all(color: Color(0xFFFF0000)),
            () async {
              //TODO: Implemente the logic of Cancel
              _showMyDialog();
            },
          ),
        ],
      ),
    );
  }

  Padding _enableActionSection(double screenHeight, double screenWidth) {
    return Padding(
      padding: EdgeInsets.only(
        // top: (25 / 890.2857) * screenHeight,
        bottom: (20 / 890.2857) * screenHeight,
        left: (19 / 411.42857) * screenWidth,
        right: (19 / 411.42857) * screenWidth,
      ),
      child: Text(
        "Actions :",
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

  Widget _actionBox(
    bool enableActionBox,
    double screenWidth,
    Color color,
    String textBox,
    Color? textColor,
    double letterSpacing,
    BoxBorder? border,
    void Function()? onTap,
  ) {
    return enableActionBox
        ? ActionBox(
            screenWidth: screenWidth,
            border: border,
            color: color,
            letterSpacing: letterSpacing,
            onTap: onTap,
            textBox: textBox,
            textColor: textColor,
          )
        : const SizedBox();
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      useSafeArea: true,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'You are about to cancel your reservation.',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  'ARE YOU SURE?',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  "THIS ACTION IS IRREVERSIBLE !",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'YES',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              onPressed: () {
                //TODO: Cancel the reservation and delete from the database
              },
            ),
            TextButton(
              child: Text(
                'NO',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1C1F1E),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    // Tableau des noms de jours de la semaine
    List<String> daysOfWeek = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];

    // Tableau des noms des mois
    List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];

    // Récupération du nom du jour de la semaine, du numéro du jour, du nom du mois et de l'année
    String dayOfWeek = daysOfWeek[date.weekday - 1];
    String dayOfMonth = date.day.toString();

    // Ajout du suffixe approprié au numéro du jour
    if (dayOfMonth.endsWith('1') && dayOfMonth != '11') {
      dayOfMonth += 'st';
    } else if (dayOfMonth.endsWith('2') && dayOfMonth != '12') {
      dayOfMonth += 'nd';
    } else if (dayOfMonth.endsWith('3') && dayOfMonth != '13') {
      dayOfMonth += 'rd';
    } else {
      dayOfMonth += 'th';
    }

    String month = months[date.month - 1];
    String year = date.year.toString();

    // Formatage de la date selon le modèle requis
    String formattedDate = '$dayOfWeek $dayOfMonth $month $year';
    return formattedDate;
  }
}
=======
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
>>>>>>> anissKettroussi
