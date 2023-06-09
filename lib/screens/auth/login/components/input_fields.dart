import 'package:flutter/material.dart';
import 'package:brackethub_app/utils/app_style.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  String? _emailErrorText;
  String? _passErrorText;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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

  void _validatePassword(String value) {
    if (value.isEmpty) {
      setState(() {
        _passErrorText = 'Please enter a password';
      });
    } else if (value.length < 8) {
      setState(() {
        _passErrorText = 'Password must be at least 8 characters long';
      });
    } else {
      setState(() {
        _passErrorText = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20),
      child: SizedBox(
        width: size.width * 0.87,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email",
                style: TextStyle(color: Colors.white, fontSize: 15),
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
              const SizedBox(height: 20),
              const Text(
                "Password",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              TextFormField(
                controller: _passwordController,
                onChanged: _validatePassword,
                style: const TextStyle(color: Colors.white),
                cursorColor: kPrimaryColor,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  errorText: _passErrorText,
                  border: const UnderlineInputBorder(),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    child: Icon(
                      color: kPrimaryColor,
                      _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
