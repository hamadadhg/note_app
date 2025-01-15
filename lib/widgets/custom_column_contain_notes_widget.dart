import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/widgets/custom_list_tile_widget.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

class CustomColumnContainNotesWidget extends StatelessWidget {
  const CustomColumnContainNotesWidget({
    super.key,
    required this.secondNotesModal,
  });
  final NotesModal secondNotesModal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: 16,
        ),
        CustomListTileWidget(
          thirdNotesModal: secondNotesModal,
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 25,
            bottom: 18,
          ),
          child: CustomTextWidget(
            text: secondNotesModal.date,
            fontSize: 16,
            color: kBlackColor.withValues(
              alpha: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
