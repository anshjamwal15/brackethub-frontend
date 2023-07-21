import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class UserStatusContainer extends StatelessWidget {
  const UserStatusContainer(this.imageURL, this.isOnline, {super.key});
  final String imageURL;
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerSize = screenWidth * 0.14;
    final onlineIconSize = containerSize * 0.3;
    final innerCircleSize = onlineIconSize * 0.4;
    return Stack(
      children: [
        Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imageURL),
            ),
          ),
        ),
        Positioned(
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
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBackgroundColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
