import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addNotesCubit/add_note_cubit.dart';
import 'package:notes_app/helper/outline_input_border_helper.dart';
import 'package:notes_app/helper/snack_bar_helper.dart';
import 'package:notes_app/states/add_note_state.dart';
import 'package:notes_app/widgets/custom_column_contain_bottom_sheet_widget.dart';

void showModalBottomSheetHelper(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: outlineInputBorderHelper(
      color: 0xff141414,
      borderRadius: 16,
    ),
    builder: (context) {
      return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is FailureState) {
              snackBarHelper(
                context: context,
                text: state.errorMessage,
              );
            } else if (state is SuccessState) {
              snackBarHelper(
                context: context,
                text: state.successMessage,
              );
            }
          },
          builder: (context, state) {
            return const CustomColumnContainBottomSheetWidget();
          },
        ),
      );
    },
  );
}
