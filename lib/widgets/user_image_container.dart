import 'package:flutter/material.dart';

class UserImageContainer extends StatelessWidget {
  const UserImageContainer(this.imageURL, this.containerSize, {super.key});
  final String imageURL;
  final double containerSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imageURL),
        ),
      ),
    );
  }
}
