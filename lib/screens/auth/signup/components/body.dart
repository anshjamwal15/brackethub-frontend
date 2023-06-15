import 'package:brackethub_app/screens/auth/signup/components/custom_banner.dart';
import 'package:brackethub_app/screens/auth/signup/components/input_fields.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBanner(),
            const InputFields(),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.1,
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
