import 'package:brackethub_app/screens/auth/signup/components/custom_banner.dart';
import 'package:brackethub_app/screens/auth/signup/components/input_fields.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomBanner(),
            InputFields(),
          ],
        ),
      ),
    );
  }
}
