import 'package:notes_app/modals/notes_modal.dart';

class DisplayNoteState {}

class InitialState extends DisplayNoteState {}

class ThereAreNotState extends DisplayNoteState {}

class ThereAreState extends DisplayNoteState {
  List<NotesModal> notesList = [];
  ThereAreState({
    required this.notesList,
  });
}
