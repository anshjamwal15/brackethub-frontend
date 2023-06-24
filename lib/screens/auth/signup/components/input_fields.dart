import 'package:flutter/material.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String? _phoneErrorText;
  String? _ageErrorText;

  @override
  void dispose() {
    _fullNameController.dispose();
    _dateController.dispose();
    _phoneController.dispose();
    _ageController.dispose();
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

  void _validatePhone(String value) {
    if (value.isEmpty) {
      setState(() {
        _phoneErrorText = 'Please enter a phone number';
      });
    } else if (value.length < 10) {
      setState(() {
        _phoneErrorText = 'Please enter a valid 10-digit phone number';
      });
    } else {
      setState(() {
        _phoneErrorText = null;
      });
    }
  }

  void _validateAge(String value) {
    if (value.isEmpty) {
      setState(() {
        _ageErrorText = 'Please enter age';
      });
    } else if (int.parse(value) < 18) {
      setState(() {
        _ageErrorText = 'Please enter a valid age';
      });
    } else {
      setState(() {
        _ageErrorText = null;
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
              customInputField(_fullNameController, false),
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
                style: const TextStyle(color: Colors.white),
                cursorColor: kPrimaryColor,
                readOnly: true,
                decoration: InputDecoration(
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
              phoneNumberField(
                _phoneController,
                _validatePhone,
                _phoneErrorText,
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Age",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
              ),
              customInputField(
                _ageController,
                true,
                _validateAge,
                _ageErrorText,
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customInputField(TextEditingController controller, bool isNumber,
    [Function(String)? onChange, String? errorText]) {
  return TextFormField(
    keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
    inputFormatters: isNumber
        ? [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(2)
          ]
        : [],
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

Widget phoneNumberField(TextEditingController controller,
    Function(String)? onChange, String? errorText) {
  return TextFormField(
    keyboardType: TextInputType.phone,
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
      LengthLimitingTextInputFormatter(10),
    ],
    controller: controller,
    onChanged: onChange,
    style: const TextStyle(color: Colors.white),
    cursorColor: kPrimaryColor,
    decoration: InputDecoration(
      prefixText: '+91 ',
      errorText: errorText,
      prefixStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      border: const UnderlineInputBorder(),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: kPrimaryColor),
      ),
    ),
  );
}
