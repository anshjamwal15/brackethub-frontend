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

AppBar appBar(BuildContext context) {
  return AppBar(
    leading: BackButton(
      onPressed: () => Navigator.pop(context),
      color: Colors.white,
    ),
    backgroundColor: kBackgroundColor,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kTextColor),
      gapPadding: 10);
  return InputDecorationTheme(
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
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
