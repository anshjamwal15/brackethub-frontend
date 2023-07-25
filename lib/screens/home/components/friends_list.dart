import 'package:brackethub_app/utils/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../utils/utils.dart';
import '../../../widgets/user_status_container.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 40),
                child: CustomText(
                  text: "Direct Messages",
                  fontSize: 20,
                  weight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10, right: 20),
                child: SizedBox(
                  child: CustomInputField(
                    hintText: "Find or start a conversation",
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return SizedBox(
                height: size.height * 0.08,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const UserStatusContainer(
                        "assets/images/user_image.jpeg",
                        false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CustomText(
                          text: "TestUser $index",
                          fontSize: 18,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
