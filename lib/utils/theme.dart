import 'package:brackethub_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: kBackgroundColor,
    fontFamily: "Poppins",
    // appBarTheme: appBarTheme(),
    // primaryColor: kPrimaryColor,
    // colorSchemeSeed: kPrimaryColor,
    // textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
    // inputDecorationTheme: inputDecorationTheme(),
    // textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.context});
  final BuildContext context;
  @override
  Widget build(BuildContext ct) {
    return AppBar(
      leading: BackButton(
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      backgroundColor: kBackgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: kPrimaryColor,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, //
      ),
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18));
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.weight,
  });
  final String text;
  final double fontSize;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight,
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
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(
            const Rect.fromLTWH(0, 0, 200, 70),
          ),
      ),
    );
  }
}

class CustomSecondaryText extends StatelessWidget {
  const CustomSecondaryText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.weight,
  });
  final String text;
  final double fontSize;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight,
        foreground: Paint()
          ..shader = const LinearGradient(
            colors: [
              Color.fromARGB(255, 201, 201, 201),
              Color.fromARGB(255, 201, 201, 201),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(
            const Rect.fromLTWH(0, 0, 200, 70),
          ),
      ),
    );
  }
}
