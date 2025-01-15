import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/states/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit()
      : super(
          InitialState(),
        );
  addNoteMethod({required NotesModal noteInAddNoteMethod}) async {
    emit(
      LoadingState(),
    );
    try {
      var addDataToHive = Hive.box<NotesModal>(
        kOpenBox,
      );
      await addDataToHive.add(
        noteInAddNoteMethod,
      );
      emit(
        SuccessState(
          successMessage: 'Success Add Note',
        ),
      );
    } catch (e) {
      emit(
        FailureState(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
