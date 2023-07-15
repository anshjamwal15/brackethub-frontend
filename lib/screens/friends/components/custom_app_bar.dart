import 'package:brackethub_app/screens/friends/screens/add_friend.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/smooth_page_transition.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBackground2Color,
      automaticallyImplyLeading: false,
      leadingWidth: 120,
      leading: const Center(
        child: CustomText(
          text: "Friends",
          fontSize: 25,
          weight: FontWeight.bold,
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
            onPressed: () => smoothNavigate(context, const AddFriend()),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
