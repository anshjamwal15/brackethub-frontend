import 'package:brackethub_app/screens/auth/splash/components/body.dart';
import 'package:brackethub_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Default extends StatefulWidget {
  const Default({super.key});

  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () => smoothNavigate(context, const Body()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/images/splash.svg",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 40),
                customText(
                  "Bracket Hub",
                  30,
                  FontWeight.bold,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
