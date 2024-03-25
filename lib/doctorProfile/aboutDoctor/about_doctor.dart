import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDoctorSection extends StatelessWidget {
  final String data =
      '''Lorem ipsum dolor sit amet consectetur. Pulvinar tempor condimentum mattis eget arcu sit vitae donec fames. Sapien in purus purus enim facilisi est tristique lobortis. Tellus consequat aliquam elementum nunc nisi varius. Eu ac porttitor in amet facilisi cursus aenean. Facilisis cursus congue odio sed lorem.''';

  const AboutDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: (10 / 428) * MediaQuery.of(context).size.height,
        right: 10,
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Doctor',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
              height: 8), // Adding some space between the title and the content
          Text(
            data,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color.fromRGBO(28, 31, 30, 0.46),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
