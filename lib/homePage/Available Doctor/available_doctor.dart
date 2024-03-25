import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableDoctor extends StatelessWidget {
  const AvailableDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: (32 / 926) * MediaQuery.of(context).size.height,
        left: (24 / 428) * MediaQuery.of(context).size.width,
      ),
      height:
          100, // Provide a fixed height here or use MediaQuery to get dynamic height
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              Container(
                height: (60 / 428) * MediaQuery.of(context).size.width,
                width: (60 / 428) * MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(209, 209, 209, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Image.asset(
                    'lib/icons/availableDoctors/availableDoctors.png',
                    height: (43 / 428) * MediaQuery.of(context).size.width,
                    width: (43 / 428) * MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Available Doctors',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize:
                            (20.77 / 428) * MediaQuery.of(context).size.width,
                        color: const Color.fromRGBO(28, 31, 30, 0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Find the available nearest doctors',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(28, 31, 30, 0.7),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
