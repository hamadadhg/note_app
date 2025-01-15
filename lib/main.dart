/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/modals/notes_modal.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(
    NotesModalAdapter(),
  );
  await Hive.openBox<NotesModal>(
    kOpenBox,
  );
  runApp(
    const NotesApp(),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DisplayNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const HomeView(),
      ),
    );
  }
}
*/
