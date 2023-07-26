import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer(
      this.colorData, this.iconData, this.iconSize, this.containerSize,
      {super.key});
  final Color colorData;
  final IconData iconData;
  final double iconSize;
  final double containerSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorData,
      ),
      child: Center(
        child: Icon(
          iconData,
          color: Colors.white,
          size: iconSize,
        ),
      ),
    );
  }
}
