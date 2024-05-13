import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appointment_status.dart';

class StatusBox extends StatelessWidget {
  final AppointmentStatus status;
  final double screenWidth;
  final double screenHeight;
  const StatusBox({
    super.key,
    required this.status,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: (19 / 411.42857) * screenWidth,
        left: (19 / 411.42857) * screenWidth,
      ),
      child: Column(
        children: [
          Container(
            height: 61,
            decoration: BoxDecoration(
              color: status.color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                status.label!,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 8,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          status.color != Color(0xFF1ABFB5)
              ? Row(
                  children: [
                    SizedBox(
                      width: 9,
                    ),
                    Image.asset(
                      "lib/icons/myAppointmentDetails/caution.png",
                      color: status.color,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Il faudra traiter tout les cas possible (CAS STATUS NOT CONFIRMED AND STATUS CANCLED)
                      },
                      child: Text(
                        status.color != Colors.red
                            ? "Click here to confirm your appointment"
                            : "Click here for more informations",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF1ABFB5),
                            fontStyle: FontStyle.italic,
                            letterSpacing: status.color != Colors.red ? 1 : 2.5,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : const SizedBox(),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
