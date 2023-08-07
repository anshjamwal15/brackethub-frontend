import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
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
        ),
        const Padding(padding: EdgeInsets.only(bottom: 20))
      ],
    );
  }
}
