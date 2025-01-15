import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/helper/outline_input_border_helper.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    this.maxLines = 1,
    required this.hintText,
    this.onSaved,
    this.onChanged,
  });
  final int maxLines;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The Fields Is Required';
        }
        return null;
      },
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kGreenColor,
      decoration: InputDecoration(
        border: outlineInputBorderHelper(
          color: kWhiteColor.value,
          borderRadius: 6,
        ),
        enabledBorder: outlineInputBorderHelper(
          color: kWhiteColor.value,
          borderRadius: 6,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kGreenColor,
        ),
      ),
    );
  }
}
