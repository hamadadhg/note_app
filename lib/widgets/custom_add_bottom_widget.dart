/*
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

class CustomAddBottomWidget extends StatelessWidget {
  const CustomAddBottomWidget({
    super.key,
    required this.recieveIsLoading,
  });
  final bool recieveIsLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: kGreenColor,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      child: Center(
        child: recieveIsLoading
            ? const CircularProgressIndicator(
                color: Colors.blue,
                backgroundColor: Colors.grey,
                strokeWidth: 4,
              )
            : CustomTextWidget(
                text: 'Add',
                fontSize: 27,
                color: kBlackColor,
              ),
      ),
    );
  }
}
*/
