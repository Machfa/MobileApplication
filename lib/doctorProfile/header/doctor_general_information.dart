import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/doctorProfile/header/doctor_pic.dart';

class DoctorGeneralInformation extends StatefulWidget {
  final List<String> doctorInfo = [
    'Dr. SEBA Mohammed',
    'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    true.toString(),
    '4.7',
    'Cardiologist',
    '5 min',
    '2000.00 DA',
  ];
  DoctorGeneralInformation({super.key});

  @override
  State<DoctorGeneralInformation> createState() =>
      _DoctorGeneralInformationState();
}

class _DoctorGeneralInformationState extends State<DoctorGeneralInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: BorderDirectional(
          bottom: BorderSide(
            color: const Color.fromRGBO(169, 169, 169, 1),
            width: (1.5 / 384) * MediaQuery.of(context).size.width,
          ),
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 20,
              bottom: 20,
              right: 10,
            ),
            child: DoctorPic(),
          ),
          DoctorDetails(),
        ],
      ),
    );
  }
}

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: (20 / (79728 / 99)) * MediaQuery.of(context).size.height,
        ),
        Row(
          children: [
            Text(
              'Dr. SEBA Mohammed',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: (16 / 392.727) * MediaQuery.of(context).size.width,
                ),
              ),
            ),
            SizedBox(
              width: (40 / 392.727) * MediaQuery.of(context).size.width,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_horiz_outlined,
                size: (30 / 392.727) * MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
        Text(
          'Cardiologist',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: (14 / 392.727) * MediaQuery.of(context).size.width,
            ),
          ),
        ),
        SizedBox(
          height: (30 / (79728 / 99)) * MediaQuery.of(context).size.height,
        ),
        Row(
          children: [
            IconButton(
              icon: Image.asset(
                'lib/icons/doctorInformation/messageIcon.png',
                height:
                    (26 / (79728 / 99)) * MediaQuery.of(context).size.height,
                width: (26 / (79728 / 99)) * MediaQuery.of(context).size.height,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                height: (26 / 392.727) * MediaQuery.of(context).size.width,
                width: (26 / 392.727) * MediaQuery.of(context).size.width,
                'lib/icons/doctorInformation/phoneIcon.png',
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: (60 / 384) * MediaQuery.of(context).size.width,
            ),
            Text(
              '2000 DA',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: (18 / 392.727) * MediaQuery.of(context).size.width,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
