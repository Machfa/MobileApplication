import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNavBar extends StatelessWidget {
  final String semanticsLabel;
  final String assetName;
  final Color? highlightColor;
  final bool isSelected;
  final bool dontSelect;
  final VoidCallback onTap;

  const ButtonNavBar({
    super.key,
    required this.semanticsLabel,
    required this.assetName,
    required this.isSelected,
    required this.onTap,
    this.highlightColor,
    required this.dontSelect,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        assetName,
        semanticsLabel: semanticsLabel,

        color: isSelected && !dontSelect
            ? const Color.fromRGBO(26, 191, 181, 0.8)
            : null,
        // You can adjust the color here according to your needs
        // For example, you can use a ternary operator to conditionally apply color
        // isSelected ? Colors.green : Colors.black,
        // Or you can use highlightColor if provided
        // highlightColor: isSelected ? Colors.green : highlightColor,
      ),
    );
  }
}
