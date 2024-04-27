import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machfa_app/screans/doctor_card/data_doctors.dart';

class Doctor_card extends StatelessWidget {
  const Doctor_card({super.key, required this.Doctor, required this.itemIndex});
  final Doctors Doctor;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: Stack(
        children: [
          Container(
            height: 0.14 * screenHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                )),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 0.11 * screenHeight,
                width: 0.11 * screenHeight,
                child:
                    SvgPicture.asset(Doctor.photo, fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 0.11 * screenHeight + 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Doctor.name,
                  style: TextStyle(
                    color: Color(0xFF1C1F1E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(''),
                Text(''),
                Text(
                  Doctor.price,
                  style: TextStyle(
                    color: Color(0xFFFF0000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 5,
          //   right: 5,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: ButtonStyle(
          //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //         RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //         ),
          //       ),
          //       fixedSize: MaterialStateProperty.all<Size>(Size(80, 4)),
          //       backgroundColor:
          //           MaterialStateProperty.all<Color>(Color(0xFF1ABFB5)),
          //     ),
          //     child: Text(
          //       'Book',
          //       style: TextStyle(
          //         fontSize: 10,
          //         fontWeight: FontWeight.normal,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
