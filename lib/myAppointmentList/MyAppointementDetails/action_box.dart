import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionBox extends StatelessWidget {
  final double screenWidth;
  final void Function()? onTap;
  final BoxBorder? border;
  final Color color;
  final String textBox;
  final double letterSpacing;
  final Color? textColor;
  const ActionBox({
    super.key,
    required this.screenWidth,
    required this.onTap,
    required this.border,
    required this.color,
    required this.textBox,
    required this.letterSpacing,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: (19 / 411.42857) * screenWidth,
        left: (19 / 411.42857) * screenWidth,
        bottom: 18,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 61,
          decoration: BoxDecoration(
            border: border,
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              textBox,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: letterSpacing,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
