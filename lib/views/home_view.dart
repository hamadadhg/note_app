/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/states/display_note_state.dart';
import 'package:notes_app/views/there_are_notes_view.dart';
import 'package:notes_app/views/there_arenot_notes_view.dart';
import 'package:notes_app/widgets/custom_floating_action_button_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayNoteCubit, DisplayNoteState>(
      builder: (context, state) {
        return Scaffold(
          body: state is ThereAreNotState
              ? const ThereArenotNotesView()
              : const ThereAreNotesView(),
          floatingActionButton: const CustomFloatingActionButtonWidget(),
        );
      },
    );
  }
}
*/
