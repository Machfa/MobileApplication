import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AvailableTimeSlot extends StatefulWidget {
  final Map<DateTime, bool> slots;
  const AvailableTimeSlot({super.key, required this.slots});

  @override
  State<AvailableTimeSlot> createState() => _AvailableTimeSlotState();
}

class _AvailableTimeSlotState extends State<AvailableTimeSlot> {
  int _selectedItem = -1;

  String _amORpm(DateTime timeDate) {
    return timeDate.hour >= 12 ? "pm" : "am";
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: (100 / 926) * screenHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedItem = index;
              });
              print(_selectedItem);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: _selectedItem == index &&
                        widget.slots.values.elementAt(index)
                    ? const Color(0xFF1ABFB5)
                    : widget.slots.values.elementAt(index)
                        ? const Color(0xFFFDFDFD)
                        : const Color(0xFFD9D9D9),
              ),
              child: Center(
                child: Text(
                  "${DateFormat('hh:mm').format(widget.slots.keys.elementAt(index))} ${_amORpm(widget.slots.keys.elementAt(index))}",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        itemCount: widget.slots.length,
      ),
    );
  }
}
