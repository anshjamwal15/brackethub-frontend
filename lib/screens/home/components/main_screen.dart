import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /* TODO: Write bloc for 
    1) first timers screen.
    2) last app state screen.
    */
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/location_search.svg",
            width: 200,
            height: 200,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomText(
            text: "You don't have any direct messages yet",
            fontSize: 17,
            weight: FontWeight.bold,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomText(
            text: "When you chat with friends directly it will show up here.",
            fontSize: 15,
            weight: FontWeight.w300,
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {},
            child: Material(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(size.width * 5),
              child: Container(
                width: double.infinity,
                height: size.height * 0.06,
                alignment: Alignment.center,
                child: Text(
                  'Add Friends',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
