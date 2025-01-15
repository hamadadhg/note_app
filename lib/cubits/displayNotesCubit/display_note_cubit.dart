import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/states/display_note_state.dart';

class DisplayNoteCubit extends Cubit<DisplayNoteState> {
  DisplayNoteCubit()
      : super(
          InitialState(),
        );
  List<NotesModal>? list;
  Color color = Colors.blueGrey;
  displayNoteMethod() {
    list = Hive.box<NotesModal>(
      kOpenBox,
    ).values.toList();
    if (list!.isNotEmpty) {
      emit(
        ThereAreState(
          notesList: list!,
        ),
      );
    } else {
      emit(
        ThereAreNotState(),
      );
    }
  }
}
