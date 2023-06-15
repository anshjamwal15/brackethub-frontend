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
    smoothNavigate(context, const Body());
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
                Text(
                  "Bracket Hub",
                  style: TextStyle(
                    fontSize: 30,
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
          )
        ],
      ),
    );
  }
}
