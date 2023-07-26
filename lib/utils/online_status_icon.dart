import 'package:flutter/material.dart';

import 'app_style.dart';

class OnlineStatusIcon extends StatelessWidget {
  const OnlineStatusIcon({super.key, required this.isOnline});
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerSize = screenWidth * 0.14;
    final onlineIconSize = containerSize * 0.3;
    final innerCircleSize = onlineIconSize * 0.4;
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        width: onlineIconSize,
        height: onlineIconSize,
        decoration: BoxDecoration(
          color: isOnline == true ? Colors.green : Colors.grey,
          shape: BoxShape.circle,
          border: Border.all(
            color: kBackgroundColor,
            width: 2,
          ),
        ),
        child: Center(
          child: Container(
            width: innerCircleSize,
            height: innerCircleSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOnline == true ? Colors.green : kBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
