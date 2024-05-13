import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatelessWidget {
  final doctorStdAdress =
      """Lorem ipsum dolor sit amet consectetur.  in. In nisi.""";
  final doctorHospitalAdress =
      """Lorem ipsum dolor sit amet consectetur. Cuus ac cras enim in.""";
  const Location({super.key});

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
            'Location',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              Image.asset(
                'lib/icons/locationSection/mapAdresseIcon.png',
                height: 31,
                width: 31,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 2 - 20 - 31),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(28, 31, 30, 0.46),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {},
                  child: Text(doctorStdAdress),
                ),
              ),
              Image.asset(
                'lib/icons/locationSection/hospitalIcon.png',
                height: 31,
                width: 31,
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(28, 31, 30, 0.46),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {},
                  child: Text(doctorHospitalAdress),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
