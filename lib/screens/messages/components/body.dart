import 'package:brackethub_app/screens/messages/components/custom_app_bar.dart';
import 'package:brackethub_app/screens/messages/screens/chat_screen.dart';
import 'package:brackethub_app/screens/messages/screens/new_user.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(username: "Test User", isOnline: false),
      body: const SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            NewUser(),
            ChatScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const _BottomChatBar(),
      ),
    );
  }
}

class _BottomChatBar extends StatelessWidget {
  const _BottomChatBar();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: kBackground2Color,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          IconContainer(
            kBackground2Color,
            Icons.add,
            size.width * 0.06,
            size.width * 0.10,
          ),
          const SizedBox(width: 10),
          IconContainer(
            kBackground2Color,
            Icons.card_giftcard,
            size.width * 0.05,
            size.width * 0.10,
          ),
          const SizedBox(width: 10),
          const _InputField(),
          const SizedBox(width: 10),
          IconContainer(
            kPrimaryColor,
            Icons.send,
            size.width * 0.05,
            size.width * 0.10,
          )
        ],
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  const _InputField();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.58,
      height: size.height * 0.055,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: kBackground2Color,
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.white, fontSize: 16.0),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: "Message @Test User",
          hintStyle: TextStyle(color: Colors.grey[300]),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 12.0,
          ),
        ),
      ),
    );
  }
}
