import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint(
      'The $change',
    );
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint(
      'Close The $bloc',
    );
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint(
      'Create The $bloc',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(
      'In $bloc There Is An Error $error And $stackTrace',
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint(
      'In $bloc There Is An Event $event',
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(
      'In $bloc There Is An Transition $transition',
    );
  }
}
