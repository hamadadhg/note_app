import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/states/display_note_state.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_notes_widget.dart';

class ThereAreNotesView extends StatefulWidget {
  const ThereAreNotesView({super.key});

  @override
  State<ThereAreNotesView> createState() => _ThereAreNotesViewState();
}

class _ThereAreNotesViewState extends State<ThereAreNotesView> {
  @override
  void initState() {
    BlocProvider.of<DisplayNoteCubit>(context).displayNoteMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const CustomAppBarWidget(
            text: 'Notes',
            iconButton: Icons.search,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: BlocBuilder<DisplayNoteCubit, DisplayNoteState>(
                builder: (context, state) {
                  List<NotesModal> listOfNotesModal =
                      BlocProvider.of<DisplayNoteCubit>(context).list!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: listOfNotesModal.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        child: CustomNotesWidget(
                          notesModal: listOfNotesModal[index],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
