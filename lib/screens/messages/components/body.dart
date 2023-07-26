import 'package:brackethub_app/screens/messages/components/custom_app_bar.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(username: "Test User", isOnline: false),
      body: Text("data "),
      bottomNavigationBar: _BottomChatBar(),
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
            color: kBackground2Color, // Replace this with your desired color
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
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
          const Expanded(child: _InputField()),
        ],
      ),
    );
  }
}

// FIXME: fix text input field
class _InputField extends StatelessWidget {
  const _InputField();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: kBackground2Color,
      child: TextFormField(
        style: const TextStyle(color: Colors.white, fontSize: 16.0),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: "Message @Test User",
          hintStyle: TextStyle(color: Colors.grey[300]),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 12.0,
          ),
        ),
      ),
    );
  }
}
