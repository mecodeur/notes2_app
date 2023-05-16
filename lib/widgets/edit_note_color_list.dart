import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';

class EditeNoteColorList extends StatefulWidget {
  const EditeNoteColorList({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditeNoteColorList> createState() => _EditeNoteColorListState();
}

class _EditeNoteColorListState extends State<EditeNoteColorList> {

  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  widget.note.color= kColors[index].value;
                  setState(() {

                  });
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}