import 'package:brackethub_app/screens/auth/login/login.dart';
import 'package:brackethub_app/screens/auth/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:brackethub_app/utils/utils.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/images/friends.svg",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 40),
                Text(
                  "Create, share and play quizzes whenever and wherever you want",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    shadows: const [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                        const Rect.fromLTWH(0, 0, 200, 70),
                      ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => smoothNavigate(context, const Login()),
                  child: Material(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(size.width * 0.1),
                    child: Container(
                      width: size.height * 0.4,
                      height: size.height * 0.07,
                      alignment: Alignment.center,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () => smoothNavigate(context, const SignUp()),
                  child: Material(
                    color: kButtonColor,
                    borderRadius: BorderRadius.circular(size.width * 0.1),
                    child: Container(
                      width: size.height * 0.4,
                      height: size.height * 0.07,
                      alignment: Alignment.center,
                      child: Text(
                        'I ALREADY HAVE AN ACCOUNT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
