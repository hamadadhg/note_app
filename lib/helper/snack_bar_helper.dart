import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

void snackBarHelper({required BuildContext context, required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(
        0xffCFAEF4,
      ),
      duration: const Duration(
        seconds: 2,
      ),
      content: CustomTextWidget(
        text: text,
        fontSize: 25,
        color: kWhiteColor,
      ),
    ),
  );
}
