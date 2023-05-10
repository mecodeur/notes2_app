import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text('+', style: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold,
      ),),),
      body: NotesViewBody(),
    );
  }
}
