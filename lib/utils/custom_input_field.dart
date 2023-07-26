import 'package:brackethub_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({Key? key, this.hintText, this.controller})
      : super(key: key);
  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground2Color,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey[300]),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[300],
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
                suffixIconConstraints:
                    const BoxConstraints.tightFor(width: 24.0, height: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
