import 'package:brackethub_app/screens/friends/components/custom_app_bar.dart'
    as local;
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const local.CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: CustomSecondaryText(
              text: "OFFLINE-2",
              fontSize: 15,
              weight: FontWeight.w600,
            ),
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
            const Row(
              children: [
                _UserContainer(
                  "assets/images/user_image.jpeg",
                  false,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: CustomText(
                        text: "TestUser",
                        fontSize: 20,
                        weight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: CustomSecondaryText(
                        text: "Offline",
                        fontSize: 10,
                        weight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: _IconContainer(kBackgroundColor, Icons.close),
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

class _UserContainer extends StatelessWidget {
  const _UserContainer(this.imageURL, this.isOnline);
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

class _IconContainer extends StatelessWidget {
  const _IconContainer(this.color, this.iconData);
  final Color color;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
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
}
