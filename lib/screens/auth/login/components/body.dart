import 'package:brackethub_app/screens/auth/login/components/custom_checkbox.dart';
import 'package:brackethub_app/screens/auth/login/components/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.03,
                left: size.width * 0.04,
              ),
              child: Text(
                "Hello there!",
                style:
                    TextStyle(color: Colors.white, fontSize: size.width * 0.08),
              ),
            ),
            const InputFields(),
            Column(
              children: [
                Row(
                  children: [
                    const CustomCheckBox(),
                    Text(
                      "Remember me",
                      style: TextStyle(
                          color: Colors.white, fontSize: size.width * 0.04),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  height: 1,
                  width: size.width * 0.80,
                  child: Container(
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.33,
                left: size.width * 0.1,
                right: size.width * 0.1,
              ),
              child: Material(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(size.width * 0.1),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(size.width * 0.1),
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.07,
                    alignment: Alignment.center,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white, fontSize: size.width * 0.05),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
