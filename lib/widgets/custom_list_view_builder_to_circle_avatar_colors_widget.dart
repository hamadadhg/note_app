/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/displayNotesCubit/display_note_cubit.dart';
import 'package:notes_app/widgets/custom_circle_avatar_widget.dart';

class CustomListViewToCircleAvatarWidget extends StatefulWidget {
  const CustomListViewToCircleAvatarWidget({
    super.key,
    this.colorIsSelectedInAddNote = Colors.green,
  });
  final Color colorIsSelectedInAddNote;
  @override
  State<CustomListViewToCircleAvatarWidget> createState() =>
      _CustomListViewToCircleAvatarWidgetState();
}

class _CustomListViewToCircleAvatarWidgetState
    extends State<CustomListViewToCircleAvatarWidget> {
  late int selectJustColor;
  @override
  void initState() {
    selectJustColor = listOfColors.indexWhere(
      (color) => color == widget.colorIsSelectedInAddNote,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOfColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {
                selectJustColor = index;
                BlocProvider.of<DisplayNoteCubit>(context).color =
                    listOfColors[index];
                setState(
                  () {},
                );
              },
              child: CustomCircleAvatarWidget(
                isActive: selectJustColor == index,
                color: listOfColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
*/
