import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes2_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes2_app/models/note_model.dart';
import 'package:notes2_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title, style: TextStyle(fontSize: 26, color: Colors.black),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 13.0,),
                child: Text(note.subTitle, style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();

              }, icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 25.0,),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(note.date, style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),),
            ),

          ],
        ),
      ),
    );
  }
}
