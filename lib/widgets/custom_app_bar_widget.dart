import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_button_widget.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.text,
    required this.iconButton,
    this.onPressed,
  });
  final String text;
  final IconData iconButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidget(
          text: text,
          fontSize: 35,
        ),
        CustomIconButtonWidget(
          onPressed: onPressed,
          iconData: iconButton,
          size: 33,
        ),
      ],
    );
  }
}
