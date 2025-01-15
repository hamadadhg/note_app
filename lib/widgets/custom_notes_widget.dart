import 'package:flutter/material.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/widgets/custom_column_contain_notes_widget.dart';

class CustomNotesWidget extends StatelessWidget {
  const CustomNotesWidget({
    super.key,
    required this.notesModal,
  });

  final NotesModal notesModal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                notesModalToEditView: notesModal,
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: Color(
            notesModal.color,
          ),
        ),
        child: CustomColumnContainNotesWidget(
          secondNotesModal: notesModal,
        ),
      ),
    );
  }
}
