import 'package:brackethub_app/utils/online_status_icon.dart';
import 'package:flutter/material.dart';

class UserStatusContainer extends StatelessWidget {
  const UserStatusContainer(this.imageURL, this.isOnline, {super.key});
  final String imageURL;
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerSize = screenWidth * 0.14;
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
        OnlineStatusIcon(isOnline: isOnline),
      ],
    );
  }
}
