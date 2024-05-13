import 'package:flutter/material.dart';
import 'package:machfa/botomNavBar/button_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final bool _dontSelect = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bottomNavigationBarItems = [
      ButtonNavBar(
        dontSelect: _dontSelect,
        isSelected: _selectedIndex == 0,
        onTap: () => _onItemTapped(0),
        semanticsLabel: 'Home',
        assetName: 'lib/icons/navBar/HomeButton.svg',
        highlightColor: Colors.transparent,
      ),
      ButtonNavBar(
        dontSelect: _dontSelect,
        isSelected: _selectedIndex == 1,
        onTap: () => _onItemTapped(1),
        semanticsLabel: 'Prescription History',
        assetName: 'lib/icons/navBar/PrescriptionHistory.svg',
        highlightColor: Colors.transparent,
      ),
      ButtonNavBar(
        dontSelect: true,
        isSelected: _selectedIndex == 2,
        onTap: () => _onItemTapped(2),
        semanticsLabel: 'Green Plus',
        assetName: 'lib/icons/navBar/GreenPlus.svg',
        highlightColor: Colors.transparent,
      ),
      ButtonNavBar(
        dontSelect: _dontSelect,
        isSelected: _selectedIndex == 3,
        onTap: () => _onItemTapped(3),
        semanticsLabel: 'Favorite',
        assetName: 'lib/icons/navBar/Favorite.svg',
        highlightColor: Colors.transparent,
      ),
      ButtonNavBar(
        dontSelect: _dontSelect,
        isSelected: _selectedIndex == 4,
        onTap: () => _onItemTapped(4),
        semanticsLabel: 'Caalendar',
        assetName: 'lib/icons/navBar/Calendar.svg',
        highlightColor: Colors.transparent,
      ),
    ];
    return SafeArea(
      child: Container(
        height: (MediaQuery.of(context).size.height) * (78 / 926),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 253, 253, 253),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38),
            topRight: Radius.circular(38),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 5.0),
              blurRadius: 10.4,
              color: Colors.black,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomNavigationBarItems.length,
              (index) => SizedBox(
                child: bottomNavigationBarItems[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
