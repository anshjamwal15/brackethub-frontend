import 'package:brackethub_app/screens/friends/components/custom_app_bar.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/people.svg",
              width: size.width * 0.5,
              height: size.width * 0.5,
            ),
            const SizedBox(height: 15),
            customText(
              "None of your friends are here yet",
              size.width * 0.06,
              FontWeight.bold,
            ),
            const SizedBox(height: 5),
            customSecondaryText(
              "Start a conversation by finding a friend who's already on bracketHub",
              size.width * 0.04,
              FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
