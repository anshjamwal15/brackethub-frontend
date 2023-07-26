import 'package:brackethub_app/screens/friends/screens/add_friend.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/online_status_icon.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.username, required this.isOnline});
  final String username;
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: kBackground2Color,
      automaticallyImplyLeading: false,
      leadingWidth: 200,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              CustomText(
                text: username,
                fontSize: 20,
                weight: FontWeight.w500,
              ),
              SizedBox(width: size.width * 0.01),
              OnlineStatusIcon(isOnline: isOnline)
            ],
          ),
        ),
      ),
      actionsIconTheme: const IconThemeData(size: 25),
      actions: [
        IconButton(
          icon: const Icon(Icons.phone_callback_rounded, color: Colors.white),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: const Icon(Icons.video_call, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
