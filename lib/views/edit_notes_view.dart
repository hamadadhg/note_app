/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/helper/snack_bar_helper.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_list_view_builder_to_circle_avatar_colors_widget.dart';
import 'package:notes_app/widgets/custom_text_form_field_widget.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({
    super.key,
    required this.notesModalToEditView,
  });
  final NotesModal notesModalToEditView;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            CustomAppBarWidget(
              text: 'Edit Note',
              iconButton: Icons.check,
              onPressed: () {
                widget.notesModalToEditView.title =
                    title ?? widget.notesModalToEditView.title;
                widget.notesModalToEditView.content =
                    content ?? widget.notesModalToEditView.content;
                widget.notesModalToEditView.save();
                BlocProvider.of<DisplayNoteCubit>(context).displayNoteMethod();
                widget.notesModalToEditView.color =
                    BlocProvider.of<DisplayNoteCubit>(context).color.value;
                setState(
                  () {},
                );
                Navigator.pop(
                  context,
                );
                snackBarHelper(
                  context: context,
                  text: 'The Note Is Edited',
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextFormFieldWidget(
              hintText: widget.notesModalToEditView.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormFieldWidget(
              hintText: widget.notesModalToEditView.content,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 11,
            ),
            CustomListViewToCircleAvatarWidget(
              colorIsSelectedInAddNote: Color(
                widget.notesModalToEditView.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
