import 'package:flutter/material.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:intl/intl.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  String? _emailErrorText;
  String? _passErrorText;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
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
      padding: EdgeInsets.only(
        top: size.height * 0.05,
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      child: SizedBox(
        width: size.width * 0.87,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Full Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
              ),
              customInputField(_emailController, _validateEmail),
              SizedBox(height: size.height * 0.03),
              Text(
                "Date of Birth",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
              ),
              TextFormField(
                controller: _dateController,
                onChanged: _validatePassword,
                style: const TextStyle(color: Colors.white),
                cursorColor: kPrimaryColor,
                readOnly: true,
                decoration: InputDecoration(
                  errorText: _passErrorText,
                  border: const UnderlineInputBorder(),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () => _selectDate(context),
                    child: const Icon(
                      Icons.calendar_month,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Phone Number",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
              ),
              customInputField(_emailController, _validateEmail),
              SizedBox(height: size.height * 0.03),
              Text(
                "Country",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
              ),
              customInputField(_emailController, _validateEmail),
              SizedBox(height: size.height * 0.03),
              Text(
                "Age",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
              ),
              customInputField(_emailController, _validateEmail),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customInputField(
    TextEditingController controller, Function(String)? onChange,
    [String? errorText]) {
  return TextFormField(
    controller: controller,
    onChanged: onChange,
    style: const TextStyle(color: Colors.white),
    cursorColor: kPrimaryColor,
    decoration: InputDecoration(
      errorText: errorText,
      border: const UnderlineInputBorder(),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: kPrimaryColor),
      ),
    ),
  );
}
