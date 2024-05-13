// TODO: I HAVE TO ADDJUST A DIMENSION AFTER TEST THE APPLICATION ON ANOTHER PHONE
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machfa/botomNavBar/nav_bar.dart';

import 'connected_account.dart';
import 'patient_picture.dart';

class PersonalIfnormation extends StatelessWidget {
  final bool unabledNavBar;
  // The first one in the list in the current user
  final List<Map<String, String>> connectedAccount = [
    {
      'https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg?w=1060&t=st=1711266199~exp=1711266799~hmac=f3444dc0d4ae1696c580571042a49c4abb20167ac56681c0c42dfffbc1e92fa0':
          'Kadirou'
    },
    {
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D':
          'Meriem Ikram',
    },
    {
      'https://images.unsplash.com/photo-1581391528803-54be77ce23e3?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D':
          'Mohammed Alla Eddine',
    },
    {
      'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D':
          'Amina KOURALI',
    },
  ];
  final Map<String, String> generalPersonInfo = {
    'https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg?w=1060&t=st=1711266199~exp=1711266799~hmac=f3444dc0d4ae1696c580571042a49c4abb20167ac56681c0c42dfffbc1e92fa0':
        'Kadirou'
  };
  final Map<String, String> items = {
    'Personal Information': 'lib/icons/patientProfile/person.png',
    'History': 'lib/icons/patientProfile/history.png',
    'Switch Account': 'lib/icons/patientProfile/switchAccount.png',
  };

  PersonalIfnormation({
    super.key,
    this.unabledNavBar = true,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF07BCAF),
      ),
      bottomNavigationBar: unabledNavBar ? const NavBar() : null,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: (280 / 926) * screenHeight,
            decoration: const BoxDecoration(
              color: Color(0xFF07BCAF),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                PatientPicture(
                  generalPersonInfo: generalPersonInfo,
                ),
                SizedBox(
                  height: (20 / 926) * screenHeight,
                ),
                Text(
                  "Welcome ${generalPersonInfo.values.first} !",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: (20 / 428) * screenHeight,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                (index) => GestureDetector(
                  onTap: () {
                    // Perform click action here
                    // Here i have to put index case if the 0 or 1st or 2nd Widget has been clicked
                    switch (index) {
                      case 2:
                        bottomSheetAction(context, connectedAccount);
                        break;
                      case 1:
                        // TODO: PUSH THE HISTORY PAGE
                        break;
                      case 0:
                        // TODO: PUSH THE PERSONAL INFORMATION PAGE
                        break;
                    }
                  },
                  child: Container(
                    width: (373 / 428) * screenWidth,
                    height: (88 / 926) * screenHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: (30 / 384) * screenWidth,
                            vertical: (20 / 805.333334) * screenHeight,
                          ),
                          child: ImageIcon(
                            AssetImage(
                              items.values.elementAt(index),
                            ),
                            color: const Color.fromRGBO(28, 31, 30, 1),
                            size: (50 / 428) * screenWidth,
                          ),
                        ),
                        Text(
                          items.keys.elementAt(index),
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: (20 / 428) * screenWidth,
                              color: const Color.fromRGBO(28, 31, 30, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: (20 / 428) * screenHeight,
          ),
        ],
      ),
    );
  }

  void bottomSheetAction(
    BuildContext context,
    List<Map<String, String>> connectedAccount,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Wrap(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.0,
                bottom: 15.0,
              ),
              child: Center(
                child: Container(
                  height: 10,
                  width: 71,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(
                    connectedAccount.length,
                    (index) => GestureDetector(
                      onTap: () {
                        // TODO: TO PUSH THE SCREEN OF REGISTRATION AND LOGIN
                        print("index $index pressesd");
                      },
                      child: ConnectedAccount(
                        index: index,
                        connectedAccount: connectedAccount,
                      ),
                    ),
                  ) +
                  [
                    createAccountButton(),
                  ],
            )
          ],
        );
      },
    );
  }

  GestureDetector createAccountButton() {
    return GestureDetector(
      onTap: () {
        print('New Account Button Pressed');
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 17,
              left: 17,
              bottom: 14,
            ),
            child: Container(
              // width: 60,
              height: 60,
            ),
          ),
          Text(
            'Add a New Account',
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
              Icons.add,
              color: Color(0xFFD9D9D9),
            ),
          )
        ],
      ),
    );
  }
}
