import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key,
    required this.text,
    required this.trueOrFalse,
  });
  final String text;
  final bool trueOrFalse;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context, trueOrFalse),
      child: CustomTextWidget(
        text: text,
        fontSize: 15,
        color: const Color(
          0xff4285F4,
        ),
      ),
    );
  }
}
