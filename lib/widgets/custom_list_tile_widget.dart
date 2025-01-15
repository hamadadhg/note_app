import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/widgets/custom_icon_button_widget.dart';
import 'package:notes_app/widgets/custom_text_button_widget.dart';
import 'package:notes_app/widgets/custom_text_widget.dart';

class CustomListTileWidget extends StatefulWidget {
  const CustomListTileWidget({
    super.key,
    required this.thirdNotesModal,
  });
  final NotesModal thirdNotesModal;

  @override
  State<CustomListTileWidget> createState() => _CustomListTileWidgetState();
}

class _CustomListTileWidgetState extends State<CustomListTileWidget> {
  bool gifStatus = false;
  late DisplayNoteCubit displayNoteCubit;
  @override
  void initState() {
    displayNoteCubit = BlocProvider.of<DisplayNoteCubit>(
      context,
    );
    super.initState();
  }

  Future confirmDeleteOrNo() async {
    final confirmResult = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: CustomTextWidget(
            text: 'Confirm Deletion',
            fontSize: 20,
            color: kWhiteColor,
          ),
          content: CustomTextWidget(
            text: 'Are You Sure?  You Want To Delete This Note',
            fontSize: 14,
            color: kWhiteColor,
          ),
          backgroundColor: Colors.purple.withValues(
            alpha: 0.8,
          ),
          actions: const [
            CustomTextButtonWidget(
              text: 'Cancel',
              trueOrFalse: false,
            ),
            CustomTextButtonWidget(
              text: 'Delete',
              trueOrFalse: true,
            ),
          ],
        );
      },
    );
    if (confirmResult == true) {
      triggerGifAndDeleteNote();
    }
  }

  void triggerGifAndDeleteNote() {
    setState(
      () {
        gifStatus = true;
      },
    );
    Future.delayed(
      const Duration(
        seconds: 1,
      ),
      () {
        widget.thirdNotesModal.delete();
        displayNoteCubit.displayNoteMethod();
        setState(
          () {
            gifStatus = false;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Transform.translate(
        offset: const Offset(
          170,
          -20,
        ),
        child: Visibility(
          visible: gifStatus,
          replacement: const SizedBox.shrink(),
          child: Image.asset(
            'assets/gif/gif_naroto.webp',
            width: 80,
            height: 65,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: CustomTextWidget(
        text: widget.thirdNotesModal.title,
        fontSize: 25,
        color: kBlackColor,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: CustomTextWidget(
          text: widget.thirdNotesModal.content,
          fontSize: 19,
          color: kBlackColor.withValues(
            alpha: 0.5,
          ),
        ),
      ),
      trailing: Transform.translate(
        offset: const Offset(
          0,
          -20,
        ),
        child: CustomIconButtonWidget(
          onPressed: confirmDeleteOrNo,
          iconData: FontAwesomeIcons.trash,
          size: 25,
          color: kBlackColor,
        ),
      ),
    );
  }
}
