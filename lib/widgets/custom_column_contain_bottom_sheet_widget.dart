/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/addNotesCubit/add_note_cubit.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/helper/snack_bar_helper.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/widgets/custom_add_bottom_widget.dart';
import 'package:notes_app/widgets/custom_list_view_builder_to_circle_avatar_colors_widget.dart';
import 'package:notes_app/widgets/custom_text_form_field_widget.dart';

class CustomColumnContainBottomSheetWidget extends StatefulWidget {
  const CustomColumnContainBottomSheetWidget({super.key});

  @override
  State<CustomColumnContainBottomSheetWidget> createState() =>
      _CustomColumnContainBottomSheetWidgetState();
}

class _CustomColumnContainBottomSheetWidgetState
    extends State<CustomColumnContainBottomSheetWidget> {
  String? title, content;
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 12,
        left: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormFieldWidget(
                hintText: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFieldWidget(
                hintText: 'Content',
                maxLines: 5,
                onSaved: (value) {
                  content = value;
                },
              ),
              const SizedBox(
                height: 11,
              ),
              const CustomListViewToCircleAvatarWidget(),
              const SizedBox(
                height: 11,
              ),
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    setState(
                      () {
                        isLoading = true;
                      },
                    );
                    formKey.currentState!.save();
                    Color? theColorIsSelected =
                        BlocProvider.of<DisplayNoteCubit>(context).color;
                    NotesModal notesModal = NotesModal(
                      title: title!,
                      content: content!,
                      date: DateFormat('MMMM/d/yyyy').format(DateTime.now()),
                      color: theColorIsSelected.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNoteMethod(
                      noteInAddNoteMethod: notesModal,
                    );
                    BlocProvider.of<DisplayNoteCubit>(context)
                        .displayNoteMethod();
                    setState(
                      () {
                        isLoading = false;
                      },
                    );
                    Navigator.pop(
                      context,
                    );
                    snackBarHelper(
                      context: context,
                      text: 'The Note Is Added',
                    );
                  } else {
                    setState(
                      () {
                        autovalidateMode = AutovalidateMode.always;
                      },
                    );
                  }
                },
                child: CustomAddBottomWidget(
                  recieveIsLoading: isLoading,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
