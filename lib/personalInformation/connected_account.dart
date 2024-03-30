// TODO: I HAVE TO ADDJUST A DIMENSION AFTER TEST THE APPLICATION ON ANOTHER PHONE

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectedAccount extends StatelessWidget {
  final List<Map<String, String>> connectedAccount;
  final int index;
  const ConnectedAccount({
    super.key,
    required this.connectedAccount,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 17,
            left: 17,
            bottom: 14,
          ),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  connectedAccount[index].keys.first,
                ),
              ),
            ),
          ),
        ),
        Text(
          connectedAccount[index].values.first,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 17),
          child: Icon(
            index == 0 ? Icons.radio_button_checked_sharp : Icons.circle,
            color: index == 0 ? Color(0xFF1ABFB5) : Color(0xFFD9D9D9),
          ),
        )
      ],
    );
  }
}
