import 'package:brackethub_app/screens/friends/components/custom_app_bar.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: customSecondaryText("OFFLINE-2", 15, FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Friend(size: size);
              },
            ),
          )
        ],
      ),
    );
  }
}

class Friend extends StatelessWidget {
  const Friend({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Row(
              children: [
                userContainer(
                  "assets/images/user_image.jpeg",
                  context,
                  false,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: customText(
                        "TestUser",
                        20,
                        FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: customSecondaryText(
                        "Offline",
                        10,
                        FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: iconContainer(
                    Icons.close,
                    context,
                    color: kBackground2Color,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 5),
              child: Container(
                height: 1,
                color: const Color.fromARGB(110, 66, 66, 66),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget userContainer(String imageURL, BuildContext context, bool isOnline) {
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

Widget iconContainer(IconData iconData, BuildContext context, {Color? color}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final containerSize = screenWidth * 0.10;
  return Container(
    width: containerSize,
    height: containerSize,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: Center(
      child: Icon(
        iconData,
        color: Colors.grey[400],
        size: containerSize * 0.6,
      ),
    ),
  );
}
