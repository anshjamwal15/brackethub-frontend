import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/custom_input_field.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground2Color,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.05,
              left: size.width * 0.08,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customText(
                  "Add your friend on bracketHub",
                  size.width * 0.07,
                  FontWeight.bold,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customText(
              "You will need both their username and a tag. Keep in mind that username is case sensitive.",
              size.width * 0.04,
              FontWeight.normal,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.03),
                  child: Text(
                    "ADD VIA USERNAME",
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomInputField(hintText: "Username#0000"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.03),
                  child: const Text(
                    "Your username is <user_name#5153>",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: kPrimaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: Container(
                      width: double.infinity,
                      height: size.height * 0.07,
                      alignment: Alignment.center,
                      child: Text(
                        'Send Friend Request',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
