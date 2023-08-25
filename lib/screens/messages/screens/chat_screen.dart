import 'package:brackethub_app/screens/messages/logic/blocs/message_bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/utils.dart';
import '../../../widgets/user_image_container.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final msgs = [2, 2];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.01,
        ),
        // TODO: Add gif in center when there is no conversation
        Expanded(
          child: ListView.builder(
            itemCount: msgs.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const _DateSection(),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const _MessageContainer(),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _DateSection extends StatelessWidget {
  const _DateSection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          SizedBox(
            height: 1,
            width: size.width * 0.30,
            child: Container(
              color: kButtonColor,
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          const Text(
            "August 5, 2023",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kCustomTextColor,
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          SizedBox(
            height: 1,
            width: size.width * 0.30,
            child: Container(
              color: kButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageContainer extends StatelessWidget {
  const _MessageContainer();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: UserImageContainer(
                "assets/images/user_image.jpeg",
                size.width * 0.14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: "TestUser",
                        fontSize: size.width * 0.045,
                        weight: FontWeight.w500,
                      ),
                      SizedBox(width: size.width * 0.02),
                      CustomSecondaryText(
                        text: "05/08/2023 10:18 PM",
                        fontSize: size.width * 0.03,
                        weight: FontWeight.w400,
                      ),
                    ],
                  ),
                  // BlocBuilder<MessageBloc, MessageState>(
                  //   bloc: MessageBloc(),
                  //   builder: (context, state) {
                  //     if (state is MessageInitialState) {
                  //       return Container(
                  //         constraints:
                  //             BoxConstraints(maxWidth: size.width * 0.75),
                  //         padding: const EdgeInsets.only(top: 5, right: 5),
                  //         child: Text(
                  //           'This is test data ${state.inputText}',
                  //           style: const TextStyle(
                  //             fontSize: 16.0,
                  //             color: Colors.white,
                  //           ),
                  //           softWrap: true,
                  //           overflow: TextOverflow.visible,
                  //         ),
                  //       );
                  //     } else if (state is MessageNoInputState) {
                  //       return const Text("no data");
                  //     } else {
                  //       return const Text("no data");
                  //     }
                  //   },
                  // ),
                  Container(
                    constraints: BoxConstraints(maxWidth: size.width * 0.75),
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: const Text(
                      'This is test data This is test data This is test data This is test data This is test data This is test data This is test data This is test data ',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
