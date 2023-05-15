import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Hello there!",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: SizedBox(
                width: size.width * 0.87,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
