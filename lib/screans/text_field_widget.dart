import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({
    super.key,
    required this.screenWidth, required this.hintText,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText, //you can use "labletext"
        contentPadding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
        ),
        hintStyle: TextStyle(
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: BorderSide.none, //aftter cliq "focuseborder"
        ),
        fillColor: Colors.white,
        filled: true,
        
      ),
    );
  }
}
