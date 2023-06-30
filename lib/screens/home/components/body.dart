import 'package:brackethub_app/cubits/internet_cubit.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: state == InternetState.gained
                ? kBackgroundColor
                : Colors.red[400],
            automaticallyImplyLeading: false,
          ),
          body: const SingleChildScrollView(
            child: Text("data"),
          ),
          // bottomNavigationBar: ,
        );
      },
    );
  }
}
