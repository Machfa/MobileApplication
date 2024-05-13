import 'package:flutter/material.dart';

class PatientPicture extends StatelessWidget {
  final Map<String, String> generalPersonInfo;

  const PatientPicture({
    super.key,
    required this.generalPersonInfo,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: (170 / 428) * screenWidth,
      width: (170 / 428) * screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(253, 253, 253, 0.25),
      ),
      child: Center(
        child: Container(
          height: (135 / 428) * screenWidth,
          width: (135 / 428) * screenWidth,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(253, 253, 253, 0.35),
          ),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: (100 / 428) * screenWidth,
              width: (100 / 428) * screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    generalPersonInfo.keys.first,
                  ),
                ),
                shape: BoxShape.circle,
                color: const Color.fromRGBO(253, 253, 253, 0.4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
