import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes2_app/models/note_model.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(title: 'Edite Note', icon: Icons.edit, onPressed: (){
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = subTitle ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },),
          SizedBox(height: 40),
          CustomTextFormField(
            hintText: '${widget.note.title}',
            onChanged: (value){
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            hintText: '${widget.note.subTitle}',
            onChanged: (value){
              subTitle = value;
            },
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}