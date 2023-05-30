import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                      style: const TextStyle(color: Colors.white),
                      cursorColor: kPrimaryColor,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: kPrimaryColor,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  CustomCheckBox(),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 30, right: 30),
              child: Material(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 500,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      style: TextStyle(color: Colors.white),
                      'LOGIN',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return kPrimaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateColor.resolveWith(getColor),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        });
  }
}
