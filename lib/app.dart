import 'package:brackethub_app/data/cubits/internet_cubit.dart';
import 'package:brackethub_app/screens/auth/splash/splash.dart';
import 'package:brackethub_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bracket Hub',
        theme: theme(),
        home: const Splash(),
      ),
    );
  }
}
