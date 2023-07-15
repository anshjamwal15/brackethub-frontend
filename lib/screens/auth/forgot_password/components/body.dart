import 'package:brackethub_app/screens/auth/forgot_password/components/custom_banner.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/utils/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _emailController = TextEditingController();
  String? _emailErrorText;

  void _validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        _emailErrorText = 'Please enter an email address';
      });
    } else {
      String pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
      RegExp regex = RegExp(pattern);
      if (!regex.hasMatch(value)) {
        setState(() {
          _emailErrorText = 'Please enter a valid email address';
        });
      } else {
        setState(() {
          _emailErrorText = null;
        });
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBanner(),
            SizedBox(
              width: size.width * 0.90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    onChanged: _validateEmail,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      errorText: _emailErrorText,
                      border: const UnderlineInputBorder(),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.06,
                left: size.width * 0.1,
                right: size.width * 0.1,
              ),
              child: GestureDetector(
                child: Material(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(size.width * 0.1),
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.07,
                    alignment: Alignment.center,
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.05,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
