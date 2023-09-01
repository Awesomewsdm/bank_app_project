import 'package:flutter/material.dart';
import 'package:bank_app/src/constants/input_decoration.dart';
import 'package:bank_app/src/constants/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.autofillHints,
    required this.keyboardType,
    required this.hintText,
  });
  final Iterable<String> autofillHints;
  final TextInputType keyboardType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter a valid email address";
        } else {
          return null;
        }
      },
      autofillHints: autofillHints,
      // controller: loginController.email,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 20.0),
        hintText: hintText,
        filled: true,
        fillColor: tWhiteColor,
        border: kOutlineInputBorder,
      ),
    );
  }
}
