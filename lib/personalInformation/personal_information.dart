import 'package:flutter/material.dart';
import 'package:machfa/botomNavBar/nav_bar.dart';

class PersonalIfnormation extends StatelessWidget {
  final bool unabledNavBar;
  const PersonalIfnormation({super.key, this.unabledNavBar = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF07BCAF),
      ),
      bottomNavigationBar: unabledNavBar ? const NavBar() : null,
      body: Column(
        children: [
          Container(
            color: const Color(0xFF07BCAF),
            width: double.infinity,
            height: (344 / 926) * MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: (170 / 428) * MediaQuery.of(context).size.width,
                  width: (170 / 428) * MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(253, 253, 253, 0.25),
                  ),
                  child: Center(
                    child: Container(
                      height: (135 / 428) * MediaQuery.of(context).size.width,
                      width: (135 / 428) * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(253, 253, 253, 0.35),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          height:
                              (100 / 428) * MediaQuery.of(context).size.width,
                          width:
                              (100 / 428) * MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg?w=1060&t=st=1711266199~exp=1711266799~hmac=f3444dc0d4ae1696c580571042a49c4abb20167ac56681c0c42dfffbc1e92fa0',
                              ),
                            ),
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(253, 253, 253, 0.4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
