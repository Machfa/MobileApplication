import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/globalVariable/globalVariable.dart';
// import 'package:machfa/searchPage/search_page.dart';

TextEditingController _doctorType = TextEditingController();

class SpecialityCategorySection extends StatelessWidget {
  final List<List<String>> speciality;
  const SpecialityCategorySection({
    super.key,
    required this.speciality,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: (24 / 428) * MediaQuery.of(context).size.width,
              right: (24 / 428) * MediaQuery.of(context).size.width,
              top: (40 / 926) * MediaQuery.of(context).size.height,
              bottom: (15 / 926) * MediaQuery.of(context).size.height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Specialist Category',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 28, 31, 30),
                    fontWeight: FontWeight.bold,
                    fontSize:
                        (20.77 / 926) * MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO: Push Search Screen
                },
                child: Text(
                  'See All',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: const Color.fromARGB(255, 26, 191, 181),
                      fontWeight: FontWeight.bold,
                      fontSize:
                          (20.77 / 926) * MediaQuery.of(context).size.height,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: (120 / 926) *
              MediaQuery.of(context).size.height, // Adjust height as needed
          child: ListView.builder(
            itemBuilder: (context, index) => SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (8 / 428) * MediaQuery.of(context).size.width,
                ),
                child: IconButton(
                  onPressed: () async {
                    //TODO: Display a search page with the selected speciality

                    doctorType = speciality[index][1];

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const SearchScreen(),
                    //   ),
                    // );
                  },
                  icon: Container(
                    height: (115 / 926) * MediaQuery.of(context).size.height,
                    width: (115 / 428) * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFA9A9A9),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: (5 / 926) *
                                  MediaQuery.of(context).size.height,
                              bottom: (7 / 926) *
                                  MediaQuery.of(context).size.height),
                          child: Image(
                            image: AssetImage(speciality[index][0]),
                            height:
                                (66 / 926) * MediaQuery.of(context).size.height,
                            width:
                                (66 / 428) * MediaQuery.of(context).size.width,
                          ),
                        ),
                        Text(
                          speciality[index][1],
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: const Color.fromARGB(255, 28, 31, 30),
                              fontWeight: FontWeight.bold,
                              fontSize: (13 / 926) *
                                  MediaQuery.of(context).size.height,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),
                        Text(
                          '${speciality[index][2]} Doctors',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: (13 / 428) *
                                    MediaQuery.of(context).size.width),
                            color: const Color.fromRGBO(28, 31, 30, 0.7),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            itemCount: speciality.length < 5 ? speciality.length : 5,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
