import 'package:brackethub_app/utils/theme.dart';
import 'package:brackethub_app/widgets/user_image_container.dart';
import 'package:flutter/material.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserImageContainer(
            "assets/images/user_image.jpeg",
            size.width * 0.3,
          ),
          CustomText(
            text: "Test User",
            fontSize: size.height * 0.05,
            weight: FontWeight.bold,
          ),
          CustomSecondaryText(
            text: "Test User#0000",
            fontSize: size.width * 0.05,
            weight: FontWeight.w400,
          ),
          SizedBox(height: size.height * 0.01),
          CustomSecondaryText(
            text:
                "This is the very beginning of your conversation with Test User.",
            fontSize: size.width * 0.035,
            weight: FontWeight.w400,
          ),
          Padding(padding: EdgeInsets.only(bottom: size.width * 0.08))
        ],
      ),
    );
  }
}
