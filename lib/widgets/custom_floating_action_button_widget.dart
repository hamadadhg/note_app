import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/helper/show_modal_bottom_sheet_helper.dart';

class CustomFloatingActionButtonWidget extends StatelessWidget {
  const CustomFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 5,
        bottom: 5,
      ),
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        backgroundColor: kGreenColor,
        onPressed: () {
          showModalBottomSheetHelper(context);
        },
        child: Icon(
          Icons.add,
          size: 40,
          color: kBlackColor,
        ),
      ),
    );
  }
}
