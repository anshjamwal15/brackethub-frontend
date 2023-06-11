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
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Hello there!",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            const InputFields(),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CustomCheckBox(),
                      Text(
                        "Remember me",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 1,
                    width: size.width * 0.60,
                    child: Container(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 30, right: 30),
              child: Material(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 500,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      style: TextStyle(color: Colors.white),
                      'LOGIN',
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
