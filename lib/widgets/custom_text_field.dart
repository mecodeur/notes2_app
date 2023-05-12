import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.hintText,
      this.maxLines = 1,
      this.onChanged,
      this.obscureText = false,
      this.onSaved});

  final String? hintText;
  final int? maxLines;
  final Function(String)? onChanged;
  final bool obscureText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is requierd';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: BuildOutlineInputBorder(),
        focusedBorder: BuildOutlineInputBorder(color: kPrimaryColor),
        errorBorder: BuildOutlineInputBorder(color: Colors.red),
        focusedErrorBorder: BuildOutlineInputBorder(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder BuildOutlineInputBorder({color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color == null ? Colors.white : color),
    );
  }
}
