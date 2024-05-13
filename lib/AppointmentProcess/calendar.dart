import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  final List<DateTime> toHighlight;
  final Function(DateTime?) onDaySelected;
  const Calendar({
    super.key,
    required this.toHighlight,
    required this.onDaySelected,
  });

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();
  List<bool> availableDays = List.generate(28, (index) => false);

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      print(today);
    });
    widget.onDaySelected(day); // Call callback function
  }

  bool _checkIfDayExistInTheList(DateTime day, List<DateTime> listDays) {
    for (int i = 0; i < listDays.length; i++) {
      if (day.toString().substring(0, day.toString().length - 1) ==
          listDays[i].toString()) {
        return true;
      }
    }
    return false;
  }

  // TODO: Select DATE problem TEST IT TO KNOW TO UNDERSTAND WHAT I AM TALKING ABOUT

  @override
  Widget build(BuildContext context) {
    print(widget.toHighlight.last);
    print(today);
    print(widget.toHighlight.indexOf(today));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TableCalendar(
          weekendDays: [DateTime.friday],
          startingDayOfWeek: StartingDayOfWeek.sunday,
          locale: 'en_US',
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle().copyWith(fontWeight: FontWeight.bold),
            weekendStyle: TextStyle().copyWith(fontWeight: FontWeight.bold),
          ),
          calendarStyle: CalendarStyle(
            isTodayHighlighted: false,
            weekendTextStyle: const TextStyle(color: Colors.red),
            weekNumberTextStyle: TextStyle(color: Colors.red),
            defaultTextStyle: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            disabledDecoration: BoxDecoration(),
            selectedTextStyle: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: today.weekday == 5 ? Colors.red : Colors.black,
                fontWeight: today.weekday != 5 ||
                        _checkIfDayExistInTheList(today, widget.toHighlight)
                    ? FontWeight.bold
                    : null,
              ),
            ),
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: _checkIfDayExistInTheList(today, widget.toHighlight)
                    ? 2
                    : 0,
                color: _checkIfDayExistInTheList(today, widget.toHighlight)
                    ? Color(0xFF1ABFB5)
                    : Color(0xFFE5E5E5),
                style: BorderStyle.solid,
              ),
              color: _checkIfDayExistInTheList(today, widget.toHighlight)
                  ? Colors.transparent
                  // ? Color(0xFF1ABFB5)
                  : null,
            ),
          ),
          calendarBuilders: CalendarBuilders(
            defaultBuilder: (context, day, focusedDay) {
              for (DateTime d in widget.toHighlight) {
                if (day.day == d.day &&
                    day.month == d.month &&
                    day.year == d.year) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF1ABFB5),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${day.day}',
                          style: TextStyle(
                            color: day.weekday != 5 ? Colors.white : Colors.red,
                          ),
                        ),
                      ),
                    ),
                  );
                }
              }
              return null;
            },
            dowBuilder: (context, day) {
              if (day.weekday == DateTime.friday) {
                final text = DateFormat.E().format(day);

                return Center(
                  child: Text(
                    text,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: const Color(0xFFFF0000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }
              return null;
            },
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 25),
            ),
          ),
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(day, today),
          focusedDay: today,
          firstDay: DateTime.now(),
          lastDay: DateTime.utc(2100, 12, 31),
          onDaySelected: _onDaySelected,
          onPageChanged: _onPageChanged,
        ),
      ),
    );
  }

  void _onPageChanged(DateTime focusedDay) {
    // TODO: TO REQUEST DATA FROM THE SERVER !
  }
}
