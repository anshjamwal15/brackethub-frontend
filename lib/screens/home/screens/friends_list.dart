import 'package:brackethub_app/screens/messages/message_screen.dart';
import 'package:brackethub_app/utils/custom_input_field.dart';
import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import '../../../widgets/user_status_container.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: false,
          expandedHeight: 130,
          pinned: true,
          flexibleSpace: _SilverAppBarContent(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 15,
            (context, index) {
              if (index == 0) {
                return SizedBox(
                  height: size.height * 0.08,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Row(
                      children: [
                        Icon(
                          Icons.all_inbox,
                          color: Colors.white,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: CustomText(
                            text: "Message Requests",
                            fontSize: 18,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return GestureDetector(
                onTap: () => smoothNavigate(context, const MessageScreen()),
                child: SizedBox(
                  height: size.height * 0.08,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: UserStatusContainer(
                            "assets/images/user_image.jpeg",
                            false,
                          ),
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SilverAppBarContent extends StatelessWidget {
  const _SilverAppBarContent();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: kBackgroundColor,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: EdgeInsets.only(left: 12, bottom: 70),
                  title: CustomText(
                    text: "Direct Messages",
                    fontSize: 18,
                    weight: FontWeight.w500,
                  ),
                ),
                Positioned(
                  left: 12,
                  right: 20,
                  bottom: -2,
                  child: CustomInputField(
                    hintText: "Find or start a conversation",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
