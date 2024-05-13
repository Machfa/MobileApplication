import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentRow extends StatelessWidget {
  final String reportIconPath;
  final String reportText;
  const DocumentRow({
    super.key,
    required this.reportIconPath,
    required this.reportText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: Image.asset(reportIconPath),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          child: Text(
            reportText,
            style: GoogleFonts.inter(
                textStyle: const TextStyle(fontSize: 12, letterSpacing: 2)),
          ),
        ),
        SizedBox(
          width:
              158, // TODO: Adjust the size of the widget with size of the screen
        ),
        IconButton(
          onPressed: () {
            //TODO: Donwload medical report
          },
          icon: Image.asset(
            "lib/icons/prescriptionHistory/download.png",
          ),
        )
      ],
    );
  }
}
