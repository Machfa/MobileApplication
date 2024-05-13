import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/AppointmentProcess/available_time_slot.dart';
import 'package:machfa/AppointmentProcess/calendar.dart';
import 'package:machfa/doctorProfile/header/doctor_general_information.dart';

class AvailableAppointmentCalendar extends StatefulWidget {
  const AvailableAppointmentCalendar({super.key});

  @override
  State<AvailableAppointmentCalendar> createState() =>
      _AvailableAppointmentCalendarState();
}

class _AvailableAppointmentCalendarState
    extends State<AvailableAppointmentCalendar> {
  DateTime? selectedDate;
  Map<DateTime, bool> availableSlots = {};

  void updateSelectedDate(DateTime? date) {
    setState(() {
      selectedDate = date;
      availableSlots = _slotsController(selectedDate!);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("selected date: " + selectedDate.toString());
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text(
          "Test",
          style: GoogleFonts.inter(textStyle: TextStyle()),
        ),
      ),
      body: ListView(children: [
        DoctorGeneralInformation(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Schedule",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Calendar(
          toHighlight: [
            DateTime(2024, 5, 6),
            DateTime(2024, 5, 7),
            DateTime(2024, 5, 10),
            DateTime(2024, 5, 3),
          ],
          onDaySelected: updateSelectedDate,
        ),
        if (selectedDate != null && availableSlots.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Select a slot",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              AvailableTimeSlot(slots: availableSlots),
            ],
          ),
      ]),
    );
  }

  Map<DateTime, bool> _slotsController(DateTime date) {
    // TODO: Request the available slots for date given
    return date.weekday == 5
        ? {
            DateTime(2024, 5, 5, 8, 30): true,
            DateTime(2024, 5, 5, 9, 30): false,
            DateTime(2024, 5, 5, 10, 30): true,
            DateTime(2024, 5, 5, 11, 30): false,
            DateTime(2024, 5, 5, 12, 30): true,
            DateTime(2024, 5, 5, 13, 30): false,
          }
        : {};
  }
}
