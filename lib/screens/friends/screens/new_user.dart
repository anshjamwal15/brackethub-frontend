import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground2Color,
        automaticallyImplyLeading: false,
        leadingWidth: 120,
        leading: Center(
          child: customText(
            "Friends",
            25,
            FontWeight.bold,
          ),
        ),
        actionsIconTheme: const IconThemeData(size: 25),
        actions: [
          IconButton(
            icon: const Icon(Icons.post_add, color: Colors.white),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(Icons.group_add_rounded, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/people.svg",
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 15,
            ),
            customText(
                "None of your friends are here yet", 20, FontWeight.bold),
            const SizedBox(
              height: 5,
            ),
            customSecondaryText(
              "Start a conversation by finding a friend who's already on bracketHub",
              16,
              FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
