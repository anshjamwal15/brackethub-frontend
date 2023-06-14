import 'package:brackethub_app/screens/auth/signup/signup.dart';
import 'package:brackethub_app/utils/utils.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bracket Hub',
      theme: theme(),
      home: const SignUp(),
    );
  }
}
