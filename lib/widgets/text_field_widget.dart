import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/authentication.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    required this.label,
    required this.showText,
    required this.phoneField,
    this.validator,
    this.controller,
  }) : super(key: key);
  final String label;
  final bool showText;
  final bool phoneField;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  Widget showVisibilityEye(BuildContext context) {
    final showPasswordText = Provider.of<Authentication>(context);
    return IconButton(
      onPressed: () {
        showPasswordText.showPassword();
        showPasswordText.textShow();
      },
      icon: showPasswordText.visiblePassword
          ? Icon(Icons.visibility, color: hintTextColor)
          : Icon(Icons.visibility_off, color: hintTextColor),
    );
  }

  InputDecoration formFieldDecoration(bool showIcon, String header, context) {
    return InputDecoration(
      suffixIcon: showIcon ? showVisibilityEye(context) : null,
      contentPadding: const EdgeInsets.only(left: 25),
      labelStyle: labelTextStyle,
      labelText: header,
      border: const OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromRGBO(226, 226, 226, 1), width: 10),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final obscureText = Provider.of<Authentication>(context);
    final bool textDown = obscureText.obscureText;
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: phoneField ? TextInputType.phone : TextInputType.text,
      cursorColor: hintTextColor,
      obscureText: textDown,
      decoration: formFieldDecoration(showText, label, context),
    );
  }
}