import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

class ThereArenotNotesView extends StatelessWidget {
  const ThereArenotNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          CustomAppBarWidget(
            text: 'Notes',
            iconButton: Icons.search,
          ),
          SizedBox(
            height: 270,
          ),
          CustomTextWidget(
            text: 'There Aren\'t Notes Yet 😕',
            fontSize: 26,
          ),
        ],
      ),
    );
  }
}
