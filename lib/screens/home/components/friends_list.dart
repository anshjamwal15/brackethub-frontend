import 'package:flutter/material.dart';

import '../../../widgets/user_status_container.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // TODO: fix scaffold occuring problems
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserStatusContainer(
          "assets/images/user_image.jpeg",
          false,
        )
      ],
    );
  }
}
