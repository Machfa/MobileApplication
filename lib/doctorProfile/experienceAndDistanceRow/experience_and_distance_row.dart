import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceAndDistanceRow extends StatelessWidget {
  final itemTitle = [
    'Patients',
    'Experience',
    'Distance',
  ];
  final itemContain = [
    '+617',
    '+10 years',
    '3.5 Km',
  ];

  ExperienceAndDistanceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: (15 / 428) * MediaQuery.of(context).size.height),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          itemTitle.length * 2 - 1, // Double the length to insert SizedBoxes
          (index) {
            if (index.isEven) {
              final itemIndex = index ~/ 2; // Adjusted index for item arrays
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    itemTitle[itemIndex],
                    style: GoogleFonts.inter(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromRGBO(217, 217, 217, 1),
                    ),
                    width: (115 / 428) * MediaQuery.of(context).size.width,
                    height: (57 / 428) * MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        itemContain[itemIndex],
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const SizedBox(width: 16); // Space between items
            }
          },
        ),
      ),
    );
  }
}
