import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThisWeekSchedule extends StatelessWidget {
  final List<List> availableSlot = [
    ['09', 'December', false],
    ['10', 'December', true],
    ['11', 'December', false],
    ['12', 'December', false],
    ['13', 'December', false],
    ['14', 'December', true],
    ['15', 'December', true],
    ['16', 'December', true],
  ];

  ThisWeekSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: (10 / 428) * MediaQuery.of(context).size.height,
        left: 20,
        right: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'This Week Schedule :',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See More',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(26, 191, 181, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: (50 / 426) *
                MediaQuery.of(context)
                    .size
                    .height, // Set a fixed height for the ListView

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                    width: (50 / 426) * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: availableSlot[index][2]
                          ? const Color.fromRGBO(253, 253, 253, 1)
                          : const Color.fromRGBO(217, 217, 217, 1),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        splashFactory: NoSplash.splashFactory,
                        padding: const EdgeInsets.all(5),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            availableSlot[index][0],
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            availableSlot[index][1],
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              itemCount: availableSlot.length < 7 ? availableSlot.length : 7,
            ),
          ),
        ],
      ),
    );
  }
}
