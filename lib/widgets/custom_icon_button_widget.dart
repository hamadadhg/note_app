import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomIconButtonWidget extends StatelessWidget {
  const CustomIconButtonWidget({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.size,
    this.color = const Color(
      0xffBAB4C0,
    ),
  });
  final void Function()? onPressed;
  final IconData iconData;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor.withValues(
          alpha: 0.09,
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
