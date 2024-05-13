<<<<<<< HEAD
import 'package:flutter/material.dart';

class LastestNewsMenuPoint extends StatefulWidget {
  final int itemCount;
  final int cureentItem;
  static const Color unactiveColor = Color.fromARGB(255, 209, 209, 209);
  static const Color activeColor = Color.fromARGB(255, 26, 191, 191);

  const LastestNewsMenuPoint(
      {super.key, required this.itemCount, required this.cureentItem});

  @override
  State<LastestNewsMenuPoint> createState() => _LastestNewsMenuPointState();

  Color choosedColor(int currentItem, int activeItem) =>
      currentItem == activeItem ? activeColor : unactiveColor;
}

class _LastestNewsMenuPointState extends State<LastestNewsMenuPoint> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final List<Widget> listItem = [];
    for (int i = 1; i <= widget.itemCount; i++) {
      if (i > 1) {
        listItem.add(
          SizedBox(
            width: (9 / 428) * screenWidth,
          ),
        );
      }
      listItem.add(
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.choosedColor(i, widget.cureentItem),
          ),
          height: (11 / 926) * screenHeight,
          width: (11 / 428) * screenWidth,
          alignment: Alignment.center,
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: listItem,
    );
  }
}
=======
import 'package:flutter/material.dart';

class LastestNewsMenuPoint extends StatefulWidget {
  final int itemCount;
  final int cureentItem;
  static const Color unactiveColor = Color.fromARGB(255, 209, 209, 209);
  static const Color activeColor = Color.fromARGB(255, 26, 191, 191);

  const LastestNewsMenuPoint(
      {super.key, required this.itemCount, required this.cureentItem});

  @override
  State<LastestNewsMenuPoint> createState() => _LastestNewsMenuPointState();

  Color choosedColor(int currentItem, int activeItem) =>
      currentItem == activeItem ? activeColor : unactiveColor;
}

class _LastestNewsMenuPointState extends State<LastestNewsMenuPoint> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final List<Widget> listItem = [];
    for (int i = 1; i <= widget.itemCount; i++) {
      if (i > 1) {
        listItem.add(
          SizedBox(
            width: (9 / 428) * screenWidth,
          ),
        );
      }
      listItem.add(
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.choosedColor(i, widget.cureentItem),
          ),
          height: (11 / 926) * screenHeight,
          width: (11 / 428) * screenWidth,
          alignment: Alignment.center,
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: listItem,
    );
  }
}
>>>>>>> anissKettroussi
